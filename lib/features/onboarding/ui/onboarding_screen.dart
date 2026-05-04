import 'package:doc_appointment_app/core/theming/text_styles.dart';
import 'package:doc_appointment_app/features/onboarding/ui/widgets/doc_logo_and_name.dart';
import 'package:doc_appointment_app/features/onboarding/ui/widgets/doctor_image_and_text.dart';
import 'package:doc_appointment_app/features/onboarding/ui/widgets/get_start_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                DocLogoAndName(),
                SizedBox(height: 20.h),
                DoctorImageAndText(),
                Text(
                  'Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.',
                  style: TextStyles.font13GrayRegular,
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 20.h),
                GetStartButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
