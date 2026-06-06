import 'package:doc_appointment_app/core/functions/show_dialog_error.dart';
import 'package:doc_appointment_app/core/functions/show_dialog_loading.dart';
import 'package:doc_appointment_app/core/helpers/extensions.dart';
import 'package:doc_appointment_app/core/routing/routes.dart';
import 'package:doc_appointment_app/features/register/logic/register_cubit/register_cubit.dart';
import 'package:doc_appointment_app/features/register/logic/register_cubit/register_state.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterBlocListener extends StatelessWidget {
  const RegisterBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<RegisterCubit, RegisterState>(
      child: SizedBox.shrink(),
      listenWhen: (previous, current) =>
          current is Loading || current is Failure || current is Success,
      listener: (context, state) {
        state.whenOrNull(
          loading: () {
            showDialogLoading(context);
            context.pop();
          },
          success: (success) {
            context.pop();
            context.pushNamed(Routes.loginScreen);
          },
          failure: (error) {
            showDialogError(context, error.getAllErrorMessages());
          },
        );
      },
    );
  }
}
