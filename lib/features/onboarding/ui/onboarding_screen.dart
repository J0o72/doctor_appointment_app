import 'package:doc_appointment_app/features/onboarding/ui/widgets/doc_logo_and_name.dart';
import 'package:doc_appointment_app/features/onboarding/ui/widgets/doctor_image_and_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            DocLogoAndName(),
            SizedBox(height: 20.h),
            DoctorImageAndText(),
          ],
        ),
      ),
    );
  }
}
