import 'package:doc_appointment_app/core/helpers/extensions.dart';
import 'package:doc_appointment_app/core/helpers/spacing.dart';
import 'package:doc_appointment_app/core/routing/routes.dart';
import 'package:doc_appointment_app/core/theming/text_styles.dart';
import 'package:doc_appointment_app/core/widgets/app_text_button.dart';
import 'package:doc_appointment_app/features/onboarding/ui/widgets/doc_logo_and_name.dart';
import 'package:doc_appointment_app/features/onboarding/ui/widgets/doctor_image_and_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingScreenBody extends StatelessWidget {
  const OnboardingScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            DocLogoAndName(),
            verticalSpace(10.h),
            DoctorImageAndText(),
            Text(
              'Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.',
              style: TextStyles.font14GrayRegular,
              textAlign: TextAlign.center,
            ),
            verticalSpace(15.h),
            AppTextButton(
              text: "Get Started",
              onPressed: () {
                context.pushNamed(Routes.loginScreen);
              },
            ),
          ],
        ),
      ),
    );
  }
}
