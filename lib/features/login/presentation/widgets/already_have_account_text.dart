import 'package:doctory001/core/theming/text_styles.dart';
import 'package:flutter/material.dart';

class AlreadyHaveAccountText extends StatelessWidget {
  const AlreadyHaveAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: 'Already have an account yet? ',
            style: TextStyles.font14gray500weight,
          ),
           TextSpan(
            text: 'Sign Up',
            style: TextStyles.font14primary700weight,
          ),
        ],
      ),
    );
  }
}
