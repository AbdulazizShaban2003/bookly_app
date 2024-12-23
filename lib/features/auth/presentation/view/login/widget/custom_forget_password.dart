import 'package:bookly/core/routes/route_helper.dart';
import 'package:bookly/features/auth/presentation/view/ForgetPassword/forget_password_view.dart';
import 'package:flutter/material.dart';

class CustomForgetPassword extends StatelessWidget {
  const CustomForgetPassword({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.centerRight,
        child: TextButton(
            onPressed: () {
              Navigator.push(
                  context, RouteHelper.navigateTo(ForgetPasswordView()));
            },
            child: Text(
              "Forget Password?",
              style: TextStyle(color: Color(0xff463598), fontSize: 18),
            )));
  }
}
