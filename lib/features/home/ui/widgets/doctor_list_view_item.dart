import 'package:doc_appointment_app/core/helpers/spacing.dart';
import 'package:doc_appointment_app/core/theming/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorListViewItem extends StatelessWidget {
  const DoctorListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.0),
              color: const Color.fromARGB(255, 52, 14, 14),
            ),
            width: 110.w,
            height: 120.h,
            child: Image.asset("assets/images/text.png", fit: BoxFit.cover),
          ),
          horizontalSpace(16.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Dr Name", style: TextStyles.font18DarkBlueBold),
              verticalSpace(5),
              Text(
                "Dr Degree  |  023134556",
                style: TextStyles.font12GrayMedium,
              ),
              verticalSpace(5),
              Text("Dr Email@dr.com", style: TextStyles.font12GrayMedium),
            ],
          ),
        ],
      ),
    );
  }
}
