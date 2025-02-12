import 'package:dating_app/core/theme/custom_colors.dart';
import 'package:flutter/material.dart';

class CustomSnackBar {
  static success({required BuildContext context, required String message}) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Row(
          spacing: 10,
          children: [Icon(Icons.check), Text(message)],
        ),
        backgroundColor: CustomColors.primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        elevation: 5,
      ),
    );
  }

  static Error({required BuildContext context, required String message}) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Row(
          spacing: 10,
          children: [Icon(Icons.cancel), Expanded(child: Text(message))],
        ),
        backgroundColor: CustomColors.red,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        elevation: 5,
      ),
    );
  }
}
