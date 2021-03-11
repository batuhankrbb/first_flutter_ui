import 'package:flutter/material.dart';

extension ContextExtension on BuildContext {
  double dynamicHeight(double rate) {
    if (rate < 0 || rate > 1) {
      return 0.0;
    }
    return MediaQuery.of(this).size.height * rate;
  }

  double dynamicWidth(double rate) {
    if (rate < 0 || rate > 1) {
      return 0.0;
    }
    return MediaQuery.of(this).size.width * rate;
  }

  ThemeData get theme => Theme.of(this);
}
