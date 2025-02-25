import 'package:doctory001/core/theming/text_styles.dart';
import 'package:flutter/material.dart';

class TermsAndConditionsText extends StatelessWidget {
  const TermsAndConditionsText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(text: TextSpan(
      children: [
        TextSpan(
          text: 'By logging, you agree to our ',
          style: TextStyles.font14gray500weight,
        ),
        TextSpan(
          text: ' Terms & Conditions',
          style: TextStyles.font14black700weight,
        ),
        TextSpan(
          text: ' and ',
          style: TextStyles.font14gray500weight,
        ),
        TextSpan(
          text: 'Privacy Policy',
          style: TextStyles.font14black700weight,
        ),
      ]
    ));
  }
}
