import 'package:flutter/material.dart';

dismisKeyboard() {
  FocusManager.instance.primaryFocus?.unfocus();
}

extension FigmaDimention on double {
  double toFigmaHeight(double fontsize) {
    return this / fontsize;
  }
}
