import 'package:doc_appointment_app/core/helpers/constants.dart';
import 'package:doc_appointment_app/core/routing/app_router.dart';
import 'package:doc_appointment_app/core/routing/routes.dart';
import 'package:doc_appointment_app/core/theming/colors_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DocApp extends StatelessWidget {
  const DocApp({super.key, required this.appRouter});
  final AppRouter appRouter;

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          title: 'Doctor Appointment App',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primaryColor: ColorsManager.mainBlue,
            scaffoldBackgroundColor: Colors.white,
          ),
          initialRoute: isLoggedInUser
              ? Routes.homeScreen
              : Routes.onBoardingScreen,
          onGenerateRoute: appRouter.generateRoute,
        );
      },
    );
  }
}
