import 'package:doc_appointment_app/core/theming/colors_manager.dart';
import 'package:doc_appointment_app/core/theming/font_weight_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextStyles {
  static TextStyle font24BlackBold = TextStyle(
    color: Colors.black,
    fontSize: 24.sp,
    fontWeight: FontWeightHelper.bold,
  );

  static TextStyle font32BBlueBold = TextStyle(
    color: ColorsManager.mainBlue,
    fontSize: 32.sp,
    fontWeight: FontWeightHelper.bold,
  );

  static TextStyle font13GrayRegular = TextStyle(
    fontSize: 13.sp,
    fontWeight: FontWeightHelper.regular,
    color: ColorsManager.gray,
  );

  static TextStyle font16WhiteSemiBold = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeightHelper.semiBold,
    color: Colors.white,
  );
}
