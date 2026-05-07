import 'package:doc_appointment_app/core/theming/text_styles.dart';
import 'package:flutter/material.dart';

class TermsAndConditions extends StatelessWidget {
  const TermsAndConditions({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: 'By logging, you agree to our   and PrivacyPolicy',
            style: TextStyles.font14LightGrayRegular,
          ),
          TextSpan(
            text: ' Terms & Conditions',
            style: TextStyles.font14DarkBlueRegular,
          ),
          TextSpan(text: ' and', style: TextStyles.font14LightGrayRegular),
          TextSpan(
            text: ' Privacy Policy',
            style: TextStyles.font14DarkBlueRegular,
          ),
        ],
      ),
    );
  }
}
