import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theming/app_color.dart';
import '../theming/text_styles.dart';

class TextFormFieldWidget extends StatelessWidget {
  final EdgeInsetsGeometry ? contentPadding;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final TextStyle ? inputTextStyle;
  final TextStyle ? hintStyle;
  final String hintText;
  final bool ? obscureText;
  final Color ? fillColor;
  final String? obscuringCharacter;
  final Widget? suffixIcon;
  final String? Function(String?)? validator;
  const TextFormFieldWidget({super.key, this.focusedBorder, this.enabledBorder, this.inputTextStyle, this.hintStyle, required this.hintText, this.obscureText, this.suffixIcon, this.contentPadding, this.validator, this.obscuringCharacter, this.fillColor});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscuringCharacter: obscuringCharacter ?? '*',
      obscureText: obscureText ?? false,
      style: inputTextStyle,
      validator: validator,
      decoration: InputDecoration(
        isDense: true,
        isCollapsed: true,
        fillColor:  fillColor??Colors.white,
        filled: true,
        contentPadding: contentPadding??  EdgeInsets.symmetric(vertical: 15.h, horizontal: 20.h),
        suffixIcon: suffixIcon,
        suffixIconColor:  MaterialStateColor.resolveWith((states) {
    if (states.contains(MaterialState.focused)) {
    return AppColor.primaryColor;
    }
    return AppColor.grayTextColor; 
    }),
        focusedBorder: focusedBorder?? OutlineInputBorder(borderRadius: BorderRadius.circular(12.r), borderSide: BorderSide(color: AppColor.primaryColor)),
        enabledBorder: enabledBorder?? OutlineInputBorder(borderRadius: BorderRadius.circular(12.r), borderSide: BorderSide(color: AppColor.grayTextColor)),
        hintText: hintText,
        hintStyle: hintStyle?? TextStyles.font14gray500weight,
      ),
    );
  }
}
