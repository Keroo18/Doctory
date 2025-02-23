import 'package:doctory001/core/theming/app_color.dart';
import 'package:doctory001/core/theming/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextButtonWidget extends StatelessWidget{
  final void Function()? onPressed;
  final String text;
  final bool? withIcon;
  const TextButtonWidget({super.key, required this.onPressed,required this.text, this.withIcon=true});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 12.h),
        overlayColor: Colors.transparent, // todo
        backgroundColor:
        Colors.transparent, // Make the button's background transparent
      ),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppColor.primaryColor,
          borderRadius:
          BorderRadius.circular(12.r), // Optional: Rounded corners
        ),
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 15.w, horizontal: 24.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Text(
                text,
                textAlign: TextAlign.center,
                style: TextStyles.font18white500weight,
              ),
              SizedBox(width: 10.w,),
              if(withIcon!)...[
                Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Colors.white,
                  size: 20.w,
                ),
              ]else...[
                const SizedBox(),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
