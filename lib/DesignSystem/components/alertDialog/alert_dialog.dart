import 'package:flutter/material.dart';

class ConfirmationDialog {
  static Future<bool?> show(
    BuildContext context, {
    required String title,
    required String content,
    required String confirmButtonText,
    required String cancelButtonText,
  }) {
    return showDialog<bool>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: Text(content),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(false), // Cancela
              child: Text(cancelButtonText),
            ),
            TextButton(
              onPressed: () => Navigator.of(context).pop(true), // Confirma
              child: Text(confirmButtonText),
            ),
          ],
        );
      },
    );
  }
}
