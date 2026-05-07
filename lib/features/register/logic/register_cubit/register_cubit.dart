import 'package:doc_appointment_app/core/networking/api_result.dart';
import 'package:doc_appointment_app/features/register/data/models/register_request_body.dart';
import 'package:doc_appointment_app/features/register/data/models/register_response.dart';
import 'package:doc_appointment_app/features/register/data/repos/register_repo.dart';
import 'package:doc_appointment_app/features/register/logic/register_cubit/register_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit(this._registerRepo) : super(RegisterState.initial());

  final RegisterRepo _registerRepo;

  void emitRegisterStates(RegisterRequestBody registerRequestBody) async {
    emit(RegisterState.loading());

    final response = await _registerRepo.register(registerRequestBody);

    response.when(
      success: (success) {
        emit(RegisterState.success(success));
      },
      failure: (failure) {
        emit(RegisterState.failure(error: failure.apiErrorModel.message ?? ''));
      },
    );
  }
}
