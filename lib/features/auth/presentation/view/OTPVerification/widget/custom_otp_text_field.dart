import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';

class CustomOTPTextField extends StatelessWidget {
  const CustomOTPTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return OTPTextField(

        keyboardType: TextInputType.number,
        otpFieldStyle: OtpFieldStyle(
          backgroundColor: Colors.white,
          errorBorderColor: Colors.red,
        ),
        length: 4,
        width: MediaQuery.of(context).size.width * 0.9,
        textFieldAlignment: MainAxisAlignment.spaceAround,
        fieldWidth: 75,
        fieldStyle: FieldStyle.box,
        outlineBorderRadius: 10,
        style: TextStyle(fontSize: 35,color: Colors.black),
        onChanged: (pin) {},
        onCompleted: (pin) {});
  }
}
