import 'package:doc_appointment_app/core/di/dependency_injection.dart';
import 'package:doc_appointment_app/core/routing/routes.dart';
import 'package:doc_appointment_app/features/login/logic/login_cubit/login_cubit.dart';
import 'package:doc_appointment_app/features/login/ui/login_screen.dart';
import 'package:doc_appointment_app/features/onboarding/ui/onboarding_screen.dart';
import 'package:doc_appointment_app/features/register/ui/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
          builder: (context) => const OnboardingScreen(),
        );

      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => getIt<LoginCubit>(),
            child: LoginScreen(),
          ),
        );

      case Routes.registerScreen:
        return MaterialPageRoute(builder: (context) => const RegisterScreen());

      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('No route defined for ${settings.name}')),
          ),
        );
    }
  }
}
