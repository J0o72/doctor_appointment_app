import 'package:doc_appointment_app/core/helpers/spacing.dart';
import 'package:doc_appointment_app/core/theming/colors_manager.dart';
import 'package:doc_appointment_app/core/theming/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PasswordValidation extends StatelessWidget {
  const PasswordValidation({
    super.key,
    required this.hasEightCharacters,
    required this.hasUpperCase,
    required this.hasLowerCase,
    required this.hasNumber,
    required this.hasSpecialCharacter,
  });

  final bool hasEightCharacters;
  final bool hasUpperCase;
  final bool hasLowerCase;
  final bool hasNumber;
  final bool hasSpecialCharacter;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildValidationRow('At least 8 characters', hasEightCharacters),
        verticalSpace(2.h),
        buildValidationRow('Contains uppercase letter', hasUpperCase),
        verticalSpace(2.h),
        buildValidationRow('Contains lowercase letter', hasLowerCase),
        verticalSpace(2.h),
        buildValidationRow('Contains number', hasNumber),
        verticalSpace(2.h),
        buildValidationRow('Contains special character', hasSpecialCharacter),
      ],
    );
  }

  Row buildValidationRow(String text, bool hasValidated) {
    return Row(
      children: [
        CircleAvatar(radius: 2.5, backgroundColor: ColorsManager.gray),
        horizontalSpace(6.w),
        Text(
          text,
          style: TextStyles.font14DarkBlueRegular.copyWith(
            decoration: hasValidated ? TextDecoration.lineThrough : null,
            decorationColor: Colors.green,
            decorationThickness: 2,
            color: hasValidated ? ColorsManager.gray : ColorsManager.darkBlue,
          ),
        ),
      ],
    );
  }
}
