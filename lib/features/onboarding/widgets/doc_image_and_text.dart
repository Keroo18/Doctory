import 'package:doctory001/core/theming/app_color.dart';
import 'package:doctory001/core/theming/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:animate_do/animate_do.dart';

class DocImageAndText extends StatelessWidget {
  const DocImageAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Image.asset(
          'assets/images/pngs/logo.png',
          fit: BoxFit.cover,
          width: double.infinity,
          color: AppColor.primaryColor.withOpacity(.4),
        ),
        Container(
          height: 400.h,
          foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.white.withOpacity(0),
                Colors.white,
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: const [.4, 0.8],
            ),
          ),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/pngs/doc_woman_vector.png'),
            ),
          ),
          child: FadeInDown(
            from: -100.h,
            curve: Curves.easeInOut,

            child: Image.asset(
              'assets/images/pngs/doc_woman_vector.png',
            ),
          ),
        ),
        Positioned(
          bottom: 10.h,
          child: FadeInDown(
            from: -50.h,
            curve: Curves.easeInOut,
            child: Text(
              'Book Today\nSmile Brighter Tomorrow',
              textAlign: TextAlign.center,
              style: TextStyles.font25primary700weight,
            ),
          ),
        ),
      ],
    );
  }
}
