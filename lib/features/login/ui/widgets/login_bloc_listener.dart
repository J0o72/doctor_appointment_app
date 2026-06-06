import 'package:doc_appointment_app/core/functions/show_dialog_error.dart';
import 'package:doc_appointment_app/core/functions/show_dialog_loading.dart';
import 'package:doc_appointment_app/core/helpers/extensions.dart';
import 'package:doc_appointment_app/core/routing/routes.dart';
import 'package:doc_appointment_app/features/login/logic/login_cubit/login_cubit.dart';
import 'package:doc_appointment_app/features/login/logic/login_cubit/login_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginBlocListener extends StatelessWidget {
  const LoginBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      child: SizedBox.shrink(),
      listenWhen: (previous, current) =>
          current is Loading || current is Failure || current is Success,
      listener: (context, state) {
        state.whenOrNull(
          loading: () {
            showDialogLoading(context);
            context.pop();
          },
          failure: (error) {
            print("Login Listener Failure");
            showDialogError(context, error.getAllErrorMessages());
          },
          success: (success) {
            context.pop();
            context.pushNamed(Routes.homeScreen);
          },
        );
      },
    );
  }
}
