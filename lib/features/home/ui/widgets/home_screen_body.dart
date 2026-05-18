import 'package:doc_appointment_app/core/helpers/spacing.dart';
import 'package:doc_appointment_app/features/home/ui/widgets/doctors_blue_container.dart';
import 'package:doc_appointment_app/features/home/ui/widgets/home_top_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(vertical: 16.h, horizontal: 16.w),
      child: Column(
        children: [HomeTopBar(), verticalSpace(10.h), DoctorsBlueContainer()],
      ),
    );
  }
}
