import 'package:doctory001/core/helpers/extentions.dart';
import 'package:doctory001/core/navigations/routes.dart';
import 'package:doctory001/core/theming/text_styles.dart';
import 'package:doctory001/core/widgets/text_button_widget.dart';
import 'package:doctory001/features/onboarding/widgets/doc_image_and_text.dart';
import 'package:doctory001/features/onboarding/widgets/doc_logo_and_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
              top: 30.h,
              bottom: 30.h,
              left: 20.w,
              right: 20.w,
            ),
            child: Column(
              children: [
                const DocLogoAndName(),
                SizedBox(
                  height: 50.h,
                ),
                const DocImageAndText(),
                SizedBox(
                  height: 30.h,
                ),
                Column(
                  children: [
                    Text(
                      'Easily book appointments, get expert dental care\nand keep your smile healthy—all from your phone.',
                      style: TextStyles.font14black500weight,
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    TextButtonWidget(
                      onPressed: () {
                        context.pushNamed(Routes.loginScreen);
                      },
                      text: "Get Started",
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
