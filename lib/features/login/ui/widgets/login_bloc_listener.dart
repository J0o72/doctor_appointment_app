import 'package:doc_appointment_app/core/helpers/extensions.dart';
import 'package:doc_appointment_app/core/routing/routes.dart';
import 'package:doc_appointment_app/core/theming/colors_manager.dart';
import 'package:doc_appointment_app/core/theming/text_styles.dart';
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
            showDialog(
              context: context,
              builder: (context) => const Center(
                child: CircularProgressIndicator(color: ColorsManager.mainBlue),
              ),
            );
            context.pop();
          },
          failure: (error) {
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                icon: Icon(Icons.error, color: Colors.red),
                content: Text(
                  error,
                  style: TextStyles.font15DarkBlueMedium,
                  textAlign: TextAlign.center,
                ),
                actions: [
                  TextButton(
                    onPressed: () {
                      context.pop();
                    },
                    child: Center(
                      child: Text(
                        'Got it',
                        style: TextStyles.font14BlueSemiBold,
                      ),
                    ),
                  ),
                ],
              ),
            );
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
