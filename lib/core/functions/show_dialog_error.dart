import 'package:doc_appointment_app/core/helpers/extensions.dart';
import 'package:doc_appointment_app/core/theming/text_styles.dart';
import 'package:flutter/material.dart';

Future<dynamic> showDialogError(BuildContext context, String error) {
  return showDialog(
    context: context,
    builder: (context) => AlertDialog(
      icon: Icon(Icons.error, color: Colors.red),
      content: Text(
        error,
        style: TextStyles.font15DarkBlueMedium,
        textAlign: TextAlign.center,
      ),
      actions: [
        TextButton(
          onPressed: () {
            context.pop();
          },
          child: Center(
            child: Text('Got it', style: TextStyles.font14BlueSemiBold),
          ),
        ),
      ],
    ),
  );
}
