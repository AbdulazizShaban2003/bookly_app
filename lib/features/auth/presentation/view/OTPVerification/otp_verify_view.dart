import 'package:bookly/core/resources/size_manager.dart';
import 'package:bookly/features/auth/presentation/view/OTPVerification/widget/custom_otp_text_field.dart';
import 'package:bookly/features/auth/presentation/view/OTPVerification/widget/custom_title_otp.dart';
import 'package:bookly/features/auth/presentation/widget/custom_appBar_view.dart';
import 'package:flutter/material.dart';

class OtpVerify extends StatelessWidget {
  const OtpVerify({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: SizeManager.widthSize(context, 0.025)),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: SizeManager.heightSize(context, 0.1)),
                      CustomAppBarView(),
                      SizedBox(height: SizeManager.heightSize(context, 0.15)),
                      CustomTitleOTP(),
                      SizedBox(
                        height: SizeManager.heightSize(context, 0.05),
                      ),
                      CustomOTPTextField(),
                      SizedBox(
                        height: SizeManager.heightSize(context, 0.09),
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: SizeManager.widthSize(context, 0.7),
                        height: SizeManager.heightSize(context, 0.06),
                        decoration: BoxDecoration(
                            color: Colors.white70,
                            borderRadius: BorderRadius.circular(15)),
                        child: Text(
                          "Verify",
                          style: TextStyle(fontSize: 20, color: Colors.black),
                        ),

                      ),
                      SizedBox(
                        height: SizeManager.heightSize(context, 0.2),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Didn’t received code? ",
                            style: TextStyle(fontSize: 20),
                          ),
                          TextButton(
                              onPressed: () {

                              },
                              child: Text(
                                "Resend",
                                style:
                                TextStyle(color: Color(0xff463598), fontSize: 18),
                              )),
                        ],
                      ),
                      SizedBox(
                        height: SizeManager.heightSize(context, 0.09),
                      ),
                    ]))));
  }
}
