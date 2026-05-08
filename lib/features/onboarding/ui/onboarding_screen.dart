import 'package:doc_appointment_app/features/onboarding/ui/widgets/onboarding_screen_body.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(body: OnboardingScreenBody()));
  }
}
