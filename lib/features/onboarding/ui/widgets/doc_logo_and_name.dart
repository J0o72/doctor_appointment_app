import 'package:doc_appointment_app/core/helpers/spacing.dart';
import 'package:doc_appointment_app/core/theming/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class DocLogoAndName extends StatelessWidget {
  const DocLogoAndName({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset('assets/svgs/docdoc_logo.svg'),
        horizontalSpace(10.w),
        Text("Docdoc", style: TextStyles.font24BlackBold),
      ],
    );
  }
}
