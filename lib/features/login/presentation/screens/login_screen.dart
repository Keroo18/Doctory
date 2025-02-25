import 'package:doctory001/core/helpers/spacing.dart';
import 'package:doctory001/core/theming/app_color.dart';
import 'package:doctory001/core/theming/text_styles.dart';
import 'package:doctory001/core/widgets/text_button_widget.dart';
import 'package:doctory001/features/login/presentation/widgets/terms_and_conditions_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/widgets/text_form_feild_widget.dart';
import '../widgets/already_have_account_text.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  bool isObscured = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 30.w,
        vertical: 30.h,
      ),
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Welcome Back',
              style: TextStyles.font25primary700weight,
            ),
            verticalSpace(10),
            Text(
              'We\'re excited to have you back, can\'t wait to see what you \'ve been up to since you last logged in.',
              style: TextStyles.font14gray500weight,
            ),
            verticalSpace(30),
            Form(
              child: Column(
                children: [
                  TextFormFieldWidget(

                    validator: (value) {
                      if (value == null || value
                          .trim()
                          .isEmpty) {
                        return "Plz enter Email address";
                      }
                      var regex = RegExp(
                          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
                      if (!regex.hasMatch(value)) {
                        return "Invalid Email";
                      }
                      return null;
                    },
                    hintText: 'Email',
                    suffixIcon:   Icon(
                      Icons.email,
                    ),
                    fillColor: AppColor.fillTextFieldColor,
                  ),

                  verticalSpace(20),
                  TextFormFieldWidget(
                    validator: (value) {
                      if (value == null || value
                          .trim()
                          .isEmpty) {
                        return "Plz enter Password";
                      }
                      return null;
                    },
                    obscureText: true,
                    suffixIcon: IconButton(
                      icon: Icon(
                        isObscured
                            ? Icons.visibility_off
                            : Icons.visibility,
                      ),
                      onPressed: () {
                        setState(() {
                          isObscured = !isObscured;
                        });
                      },
                    ),
                    fillColor: AppColor.fillTextFieldColor,

                    hintText: 'Password',

                  ),
                  verticalSpace(10),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'Forgot Password?',
                      style: TextStyles.font14primary500weight,
                    ),

                  ),
                  TextButtonWidget(
                    padding: EdgeInsets.symmetric(vertical: 25.h,),
                    text: 'Login',
                    withIcon: false,
                    onPressed: () {

                    },
                  ),

                  const TermsAndConditionsText(),
                  verticalSpace(60),
                  const AlreadyHaveAccountText(),
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
