import 'package:flutter/material.dart';

extension SizedBoxOnInt on int {
  Widget get toHeightWhiteSpace => SizedBox(
        height: toDouble(),
      );
  Widget get toWidthWhiteSpace => SizedBox(
        height: this.toDouble(),
      );
}
