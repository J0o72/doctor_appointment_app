import 'package:doc_appointment_app/core/helpers/spacing.dart';
import 'package:doc_appointment_app/core/theming/text_styles.dart';
import 'package:doc_appointment_app/core/widgets/app_text_button.dart';
import 'package:doc_appointment_app/core/widgets/app_text_form_field.dart';
import 'package:doc_appointment_app/features/login/ui/widgets/email_and_password.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(right: 20.h, left: 20.h, top: 40.h),
            child: Form(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text('Welcome Back', style: TextStyles.font24BBlueBold),
                  Text(
                    'We\'re excited to have you back, can\'t wait to see what you\'ve been up to since you last logged in.',
                    style: TextStyles.font14GrayRegular,
                  ),
                  verticalSpace(40.h),
                  EmailAndPassword(),
                  verticalSpace(20.h),
                  Align(
                    alignment: AlignmentDirectional.centerEnd,
                    child: Text(
                      'Forgot Password?',
                      style: TextStyles.font14BlueSemiBold,
                    ),
                  ),
                  verticalSpace(40.h),
                  AppTextButton(text: "Login", onPressed: () {}),
                  verticalSpace(40.h),

                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text:
                              'By logging, you agree to our   and PrivacyPolicy',
                          style: TextStyles.font14LightGrayRegular,
                        ),
                        TextSpan(
                          text: ' Terms & Conditions',
                          style: TextStyles.font14DarkBlueRegular,
                        ),
                        TextSpan(
                          text: ' and',
                          style: TextStyles.font14LightGrayRegular,
                        ),
                        TextSpan(
                          text: ' Privacy Policy',
                          style: TextStyles.font14DarkBlueRegular,
                        ),
                      ],
                    ),
                  ),
                  verticalSpace(20.h),
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Already have an account? ',
                          style: TextStyles.font14DarkBlueRegular,
                        ),
                        TextSpan(
                          text: ' Sign Up',
                          style: TextStyles.font14BlueSemiBold,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
