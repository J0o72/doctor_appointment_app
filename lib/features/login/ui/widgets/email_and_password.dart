import 'package:doc_appointment_app/core/helpers/app_regex.dart';
import 'package:doc_appointment_app/core/helpers/spacing.dart';
import 'package:doc_appointment_app/core/theming/text_styles.dart';
import 'package:doc_appointment_app/core/widgets/app_text_form_field.dart';
import 'package:doc_appointment_app/features/login/ui/widgets/password_validation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EmailAndPassword extends StatefulWidget {
  const EmailAndPassword({super.key});

  @override
  State<EmailAndPassword> createState() => _EmailAndPasswordState();
}

class _EmailAndPasswordState extends State<EmailAndPassword> {
  final formKey = GlobalKey<FormState>();
  late TextEditingController passwordController;

  bool isObscureText = true;
  bool hasEightCharacters = false;
  bool hasUpperCase = false;
  bool hasLowerCase = false;
  bool hasNumber = false;
  bool hasSpecialCharacter = false;

  @override
  void initState() {
    passwordController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          AppTextFormField(
            hintText: 'Email Address',
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegex.isEmailValid(value)) {
                return 'Please enter a valid email address';
              }
            },
          ),
          verticalSpace(20.h),
          AppTextFormField(
            hintText: 'Password',
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your password';
              }
            },
            isObscureText: isObscureText,
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  isObscureText = !isObscureText;
                });
              },
              child: Icon(
                isObscureText ? Icons.visibility : Icons.visibility_off,
              ),
            ),
          ),
          verticalSpace(20.h),
          Align(
            alignment: AlignmentDirectional.centerEnd,
            child: Text(
              'Forgot Password?',
              style: TextStyles.font14BlueSemiBold,
            ),
          ),
          verticalSpace(5.h),

          PasswordValidation(
            hasEightCharacters: hasEightCharacters,
            hasUpperCase: hasUpperCase,
            hasLowerCase: hasLowerCase,
            hasNumber: hasNumber,
            hasSpecialCharacter: hasSpecialCharacter,
          ),
        ],
      ),
    );
  }
}
