import 'package:doc_appointment_app/core/helpers/spacing.dart';
import 'package:doc_appointment_app/core/theming/colors_manager.dart';
import 'package:doc_appointment_app/core/widgets/app_text_form_field.dart';
import 'package:doc_appointment_app/features/login/ui/widgets/password_validation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegisterForm extends StatelessWidget {
  const RegisterForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          AppTextFormField(hintText: 'Full Name', validator: (value) {}),
          verticalSpace(20.h),
          AppTextFormField(hintText: 'Email', validator: (value) {}),
          verticalSpace(20.h),

          AppTextFormField(
            hintText: '01xxxxxxxxx',
            validator: (value) {},
            suffixIcon: Icon(Icons.phone, color: ColorsManager.mainBlue),
          ),
          verticalSpace(20.h),

          AppTextFormField(hintText: 'Password', validator: (value) {}),
          verticalSpace(20.h),

          AppTextFormField(hintText: 'Confirm Password', validator: (value) {}),
          verticalSpace(20.h),
          PasswordValidation(
            hasEightCharacters: false,
            hasUpperCase: false,
            hasLowerCase: false,
            hasNumber: false,
            hasSpecialCharacter: false,
          ),
        ],
      ),
    );
  }
}
