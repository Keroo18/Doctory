import 'dart:async';

import 'package:doctory001/core/helpers/extentions.dart';
import 'package:doctory001/core/theming/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/navigations/routes.dart';
import 'core/theming/text_styles.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer (
      const Duration(seconds: 3),
      () {
        context.pushReplacementNamed(Routes.onBoardingScreen);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.sizeOf(context).width,
        height: MediaQuery.sizeOf(context).height,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                'assets/images/pngs/logo.png',

            ),
            fit: BoxFit.contain,
            opacity: .15,
            colorFilter: ColorFilter.mode(AppColor.primaryColor, BlendMode.srcIn),
          )
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/pngs/logo.png',
                fit: BoxFit.fill,
                color: AppColor.primaryColor,
                height: 100.h,
                width: 100.w,
              ),
              Text(
                'Doctory',
                style: TextStyles.font50black700weight,
              ),
            ],
          ),
        ),
      ),
    );
  }
}