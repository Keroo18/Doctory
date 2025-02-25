import 'package:doctory001/core/theming/app_color.dart';
import 'package:flutter/material.dart';


class AppStyle {
  static InputBorder borderDone() {
    return OutlineInputBorder(
      borderSide:  BorderSide(color: AppColor.backgroundColor),
      borderRadius: BorderRadius.circular(8),
    );
  }

  static InputBorder borderFocuse() {
    return OutlineInputBorder(
      borderSide: const BorderSide(color: AppColor.backgroundColor),
      borderRadius: BorderRadius.circular(8),
    );
  }

  static InputBorder borderError(BuildContext context) {
    return OutlineInputBorder(
      borderSide: BorderSide(
        color: Theme.of(context).colorScheme.error,
      ),
      borderRadius: BorderRadius.circular(8),
    );
  }
}