import 'package:doc_appointment_app/core/helpers/spacing.dart';
import 'package:doc_appointment_app/core/theming/text_styles.dart';
import 'package:doc_appointment_app/core/widgets/app_text_button.dart';
import 'package:doc_appointment_app/features/login/ui/widgets/already_have_account_or_sign_up.dart';
import 'package:doc_appointment_app/features/login/ui/widgets/email_and_password.dart';
import 'package:doc_appointment_app/features/login/ui/widgets/terms_and_condition.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
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
                EmailAndPassword(formKey: formKey),
                verticalSpace(30.h),
                AppTextButton(
                  text: "Login",
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      print('Login successful');
                    }
                  },
                ),
                verticalSpace(30.h),
                TermsAndConditions(),
                verticalSpace(20.h),
                AlreadyHaveAccountOrSignUp(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
