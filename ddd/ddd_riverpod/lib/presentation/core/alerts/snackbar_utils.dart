import 'package:flutter/material.dart';

mixin SnackbarUtils {
  static void showSnackbar({
    required BuildContext context,
    required String message,
  }) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Padding(
          padding: const EdgeInsets.all(8),
          child: Text(message),
        ),
      ),
    );
  }

  static void showActionSnackbar({
    required BuildContext context,
    required String message,
    required String actionLabel,
    required VoidCallback onActionPressed,
  }) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        duration: const Duration(minutes: 5),
        content: Padding(
          padding: const EdgeInsets.all(8),
          child: Text(message),
        ),
        action: SnackBarAction(
          label: actionLabel,
          onPressed: onActionPressed,
        ),
      ),
    );
  }
}
