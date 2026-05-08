import 'package:doc_appointment_app/core/helpers/spacing.dart';
import 'package:doc_appointment_app/core/theming/text_styles.dart';
import 'package:doc_appointment_app/core/widgets/app_text_button.dart';
import 'package:doc_appointment_app/features/login/ui/widgets/terms_and_condition.dart';
import 'package:doc_appointment_app/features/register/data/models/register_request_body.dart';
import 'package:doc_appointment_app/features/register/logic/register_cubit/register_cubit.dart';
import 'package:doc_appointment_app/features/register/ui/widgets/already_have_account_or_login.dart';
import 'package:doc_appointment_app/features/register/ui/widgets/register_bloc_listener.dart';
import 'package:doc_appointment_app/features/register/ui/widgets/resigter_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegisterScreenBody extends StatelessWidget {
  const RegisterScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        right: 20.h,
        left: 20.h,
        top: 30.h,
        bottom: 10.h,
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text('Create Account', style: TextStyles.font24BBlueBold),
            Text(
              'Sign up now and start exploring all that our app has to offer. We\'re excited to welcome you to our community!',
              style: TextStyles.font14GrayRegular,
            ),
            verticalSpace(30.h),
            RegisterForm(),
            verticalSpace(20.h),
            AppTextButton(
              text: 'Create Account',
              onPressed: () {
                validateThenDoRegister(context);
              },
            ),
            verticalSpace(20.h),
            TermsAndConditions(),
            verticalSpace(20.h),
            AlreadyHaveAnAccountOrLogin(),
            verticalSpace(20.h),
            RegisterBlocListener(),
          ],
        ),
      ),
    );
  }

  void validateThenDoRegister(BuildContext context) {
    if (context.read<RegisterCubit>().formKey.currentState!.validate()) {
      context.read<RegisterCubit>().emitRegisterStates(
        RegisterRequestBody(
          name: context.read<RegisterCubit>().nameController.text,
          email: context.read<RegisterCubit>().emailController.text,
          password: context.read<RegisterCubit>().passwordController.text,
          confirmPassword: context
              .read<RegisterCubit>()
              .confirmPasswordController
              .text,
          phone: context.read<RegisterCubit>().phoneController.text,
          gender: '0',
        ),
      );
    }
  }
}
