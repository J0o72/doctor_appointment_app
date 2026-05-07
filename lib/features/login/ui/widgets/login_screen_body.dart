import 'package:doc_appointment_app/core/helpers/spacing.dart';
import 'package:doc_appointment_app/core/theming/text_styles.dart';
import 'package:doc_appointment_app/core/widgets/app_text_button.dart';
import 'package:doc_appointment_app/features/login/data/models/login_request_body.dart';
import 'package:doc_appointment_app/features/login/logic/login_cubit/login_cubit.dart';
import 'package:doc_appointment_app/features/login/ui/widgets/dont_have_account.dart';
import 'package:doc_appointment_app/features/login/ui/widgets/email_and_password.dart';
import 'package:doc_appointment_app/features/login/ui/widgets/login_bloc_listener.dart';
import 'package:doc_appointment_app/features/login/ui/widgets/terms_and_condition.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreenBody extends StatelessWidget {
  const LoginScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(right: 20.h, left: 20.h, top: 40.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text('Welcome Back', style: TextStyles.font24BBlueBold),
            Text(
              'We\'re excited to have you back, can\'t wait to see what you\'ve been up to since you last logged in.',
              style: TextStyles.font14GrayRegular,
            ),
            verticalSpace(30.h),
            EmailAndPassword(formKey: context.read<LoginCubit>().formKey),
            verticalSpace(30.h),
            AppTextButton(
              text: "Login",
              onPressed: () {
                if (context
                    .read<LoginCubit>()
                    .formKey
                    .currentState!
                    .validate()) {
                  validateThenDoLogin(context);
                }
              },
            ),
            verticalSpace(30.h),
            TermsAndConditions(),
            verticalSpace(20.h),
            DontHaveAccountOrSignUp(),
            LoginBlocListener(),
          ],
        ),
      ),
    );
  }

  void validateThenDoLogin(BuildContext context) {
    if (context.read<LoginCubit>().formKey.currentState!.validate()) {
      context.read<LoginCubit>().emitLoginStates(
        LoginRequestBody(
          email: context.read<LoginCubit>().emailController.text,
          password: context.read<LoginCubit>().passwordController.text,
        ),
      );
    }
  }
}
