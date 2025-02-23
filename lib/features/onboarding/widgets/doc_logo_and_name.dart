import 'package:doctory001/core/theming/app_color.dart';
import 'package:doctory001/core/theming/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DocLogoAndName extends StatelessWidget {
  const DocLogoAndName({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center,
        children: [
      Image.asset(
        'assets/images/pngs/logo.png',
        color: AppColor.primaryColor,
        height: 50.h,
        width: 50.w,
      ),
      Text(
        'Doctory',
        style: TextStyles.font32black700weight,
      ),
    ]);
  }
}
