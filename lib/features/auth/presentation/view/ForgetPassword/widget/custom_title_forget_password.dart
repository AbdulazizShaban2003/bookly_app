import 'package:bookly/core/resources/size_manager.dart';
import 'package:bookly/features/auth/presentation/widget/custom_title_view.dart';
import 'package:flutter/material.dart';

class CustomTitleForgetPassword extends StatelessWidget {
  const CustomTitleForgetPassword({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomTitleView(titlePage: "Forgot Password?"),
        SizedBox(
          height: SizeManager.heightSize(context, 0.01),
        ),
        Text(
          "Don't worry! It occurs. Please enter the email address linked with your account.",
          style: TextStyle(color: Colors.grey,fontSize: 18,fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
