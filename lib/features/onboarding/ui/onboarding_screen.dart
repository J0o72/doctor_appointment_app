import 'package:doc_appointment_app/features/onboarding/ui/widgets/doc_logo_and_name.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(body: Column(children: [DocLogoAndName()])),
    );
  }
}
