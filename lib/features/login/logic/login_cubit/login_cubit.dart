import 'package:doc_appointment_app/core/helpers/shared_pref_helper.dart';
import 'package:doc_appointment_app/core/helpers/shared_pref_keys.dart';
import 'package:doc_appointment_app/core/networking/api_result.dart';
import 'package:doc_appointment_app/core/networking/dio_factory.dart';
import 'package:doc_appointment_app/features/login/data/models/login_request_body.dart';
import 'package:doc_appointment_app/features/login/data/repos/login_repo.dart';
import 'package:doc_appointment_app/features/login/logic/login_cubit/login_state.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this._loginRepo) : super(const LoginState.initial());

  final LoginRepo _loginRepo;

  final formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void emitLoginStates(LoginRequestBody loginRequestBody) async {
    emit(const LoginState.loading());
    final response = await _loginRepo.login(loginRequestBody);

    response.when(
      success: (loginResponse) async {
        await saveUserToken(loginResponse.userData!.token.toString());
        emit(LoginState.success(loginResponse));
      },
      failure: (failure) {
        emit(LoginState.failure(error: failure.apiErrorModel.message ?? ''));
      },
    );
  }

  Future<void> saveUserToken(String token) async {
    await SharedPrefHelper.setData(SharedPrefKeys.userToken, token);
    DioFactory.setTokenIntoHeaderAfterLogin(token);
  }
}
