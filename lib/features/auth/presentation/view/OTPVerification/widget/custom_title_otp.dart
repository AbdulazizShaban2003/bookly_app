import 'package:bookly/core/resources/size_manager.dart';
import 'package:bookly/features/auth/presentation/widget/custom_title_view.dart';
import 'package:flutter/material.dart';

class CustomTitleOTP extends StatelessWidget {
  const CustomTitleOTP({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomTitleView(
          titlePage: 'OTP Verification',
        ),
        SizedBox(
          height: SizeManager.heightSize(context, 0.01),
        ),
        Text(
          "Enter the verification code we just sent on your email address.",
          style: TextStyle(
              color: Colors.grey,
              fontSize: 18,
              fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
