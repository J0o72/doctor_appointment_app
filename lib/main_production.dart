import 'package:doc_appointment_app/core/di/dependency_injection.dart';
import 'package:doc_appointment_app/core/functions/is_user_logged_in.dart';
import 'package:doc_appointment_app/core/routing/app_router.dart';
import 'package:doc_appointment_app/doc_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setUpGetIt();
  await ScreenUtil.ensureScreenSize();
  await checkedIFLoggedInUser();

  runApp(DocApp(appRouter: AppRouter()));
}
