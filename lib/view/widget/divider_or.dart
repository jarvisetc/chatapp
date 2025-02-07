import 'package:dating_app/core/theme/custom_colors.dart';
import 'package:dating_app/core/theme/custom_textstyle.dart';
import 'package:flutter/material.dart';

class DividerOr extends StatelessWidget {
  final Color textColor;
  const DividerOr({
    super.key,
    this.textColor = CustomColors.white,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Divider()),
        Padding(
          padding: EdgeInsets.all(10),
          child: Text(
            "Or",
            style: CustomTextstyle.subtitle.copyWith(color: textColor),
          ),
        ),
        Expanded(child: Divider())
      ],
    );
  }
}
