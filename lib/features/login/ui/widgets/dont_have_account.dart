import 'package:doc_appointment_app/core/theming/text_styles.dart';
import 'package:flutter/material.dart';

class DontHaveAccountOrSignUp extends StatelessWidget {
  const DontHaveAccountOrSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: 'Don\'t have an account? ',
            style: TextStyles.font14DarkBlueRegular,
          ),
          TextSpan(text: ' Sign Up', style: TextStyles.font14BlueSemiBold),
        ],
      ),
    );
  }
}
