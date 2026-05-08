import 'package:doc_appointment_app/core/helpers/app_regex.dart';
import 'package:doc_appointment_app/core/helpers/spacing.dart';
import 'package:doc_appointment_app/core/theming/colors_manager.dart';
import 'package:doc_appointment_app/core/widgets/app_text_form_field.dart';
import 'package:doc_appointment_app/features/login/ui/widgets/password_validation.dart';
import 'package:doc_appointment_app/features/register/logic/register_cubit/register_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegisterForm extends StatefulWidget {
  const RegisterForm({super.key});

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  late TextEditingController passwordController;

  bool isObscureTextForPassword = true;
  bool isObscureTextForPasswordConfirmation = true;
  bool hasEightCharacters = false;
  bool hasUpperCase = false;
  bool hasLowerCase = false;
  bool hasNumber = false;
  bool hasSpecialCharacter = false;

  @override
  void initState() {
    super.initState();
    passwordController = context.read<RegisterCubit>().passwordController;
    setUpPasswordControllerListener();
  }

  void setUpPasswordControllerListener() {
    passwordController.addListener(() {
      setState(() {
        hasEightCharacters = AppRegex.hasMinLength(passwordController.text);
        hasUpperCase = AppRegex.hasUpperCase(passwordController.text);
        hasLowerCase = AppRegex.hasLowerCase(passwordController.text);
        hasNumber = AppRegex.hasNumber(passwordController.text);
        hasSpecialCharacter = AppRegex.hasSpecialCharacter(
          passwordController.text,
        );
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<RegisterCubit>().formKey,
      child: Column(
        children: [
          AppTextFormField(
            hintText: 'Full Name',
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please Enter Your Name';
              }
            },
            controller: context.read<RegisterCubit>().nameController,
          ),
          verticalSpace(20.h),
          AppTextFormField(
            hintText: 'Email',
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegex.isEmailValid(value)) {
                return 'Please Enter A Valid Email';
              }
            },
            controller: context.read<RegisterCubit>().emailController,
          ),
          verticalSpace(20.h),

          AppTextFormField(
            hintText: '01xxxxxxxxx',
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegex.isPhoneNumberValid(value)) {
                return 'Please Enter A valid Phone Number';
              }
            },
            suffixIcon: Icon(Icons.phone, color: ColorsManager.mainBlue),
            controller: context.read<RegisterCubit>().phoneController,
          ),
          verticalSpace(20.h),

          AppTextFormField(
            hintText: 'Password',
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegex.hasLowerCase(value) ||
                  !AppRegex.hasMinLength(value) ||
                  !AppRegex.hasNumber(value) ||
                  !AppRegex.hasSpecialCharacter(value) ||
                  !AppRegex.hasUpperCase(value)) {
                return 'Please Enter A Valid Password';
              }
            },
            controller: context.read<RegisterCubit>().passwordController,
            isObscureText: isObscureTextForPassword,
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  isObscureTextForPassword = !isObscureTextForPassword;
                });
              },
              child: Icon(
                color: ColorsManager.mainBlue,
                isObscureTextForPassword
                    ? Icons.visibility
                    : Icons.visibility_off,
              ),
            ),
          ),
          verticalSpace(20.h),

          AppTextFormField(
            hintText: 'Confirm Password',
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please Enter A Valid Password';
              } else if (value != passwordController.text) {
                return 'The password confirmation does not match.';
              }
            },
            controller: context.read<RegisterCubit>().confirmPasswordController,
            isObscureText: isObscureTextForPasswordConfirmation,
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  isObscureTextForPasswordConfirmation =
                      !isObscureTextForPasswordConfirmation;
                });
              },
              child: Icon(
                color: ColorsManager.mainBlue,
                isObscureTextForPasswordConfirmation
                    ? Icons.visibility
                    : Icons.visibility_off,
              ),
            ),
          ),
          verticalSpace(20.h),
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
