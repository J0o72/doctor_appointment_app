import 'package:doc_appointment_app/core/theming/colors_manager.dart';
import 'package:flutter/material.dart';

Future<dynamic> showDialogLoading(BuildContext context) {
  return showDialog(
    context: context,
    builder: (context) => const Center(
      child: CircularProgressIndicator(color: ColorsManager.mainBlue),
    ),
  );
}
