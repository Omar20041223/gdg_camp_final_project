import 'package:flutter/material.dart';

extension SnackbarContext on BuildContext {
  void showSnackBar(Widget content) {
    final snackBar = SnackBar(
      content: content,
      duration: const Duration(seconds: 3),
      action: SnackBarAction(
        label: 'Close',
        onPressed: () {
          ScaffoldMessenger.of(this).hideCurrentSnackBar();
        },
      ),
    );

    ScaffoldMessenger.of(this).showSnackBar(snackBar);
  }
}

extension DialogContext on BuildContext {
  void showCustomDialog({
    required Widget title,
    required Widget content,
    Widget? confirmButton,
    Widget? cancelButton,
  }) {
    showDialog(
      context: this,
      builder: (BuildContext context) {
        return AlertDialog(
          title: title,
          content: content,
          actions: [
            if (confirmButton != null) confirmButton,
            if (cancelButton != null) cancelButton,
          ],
        );
      },
    );
  }
}

extension EmptyStringExtension on String? {
  bool isNullOrEmpty() => this == null || this!.isEmpty;
}

extension NonEmptyStringExtension on String? {
  bool isNotNullOrEmpty() => this != null && this!.isNotEmpty;
}
