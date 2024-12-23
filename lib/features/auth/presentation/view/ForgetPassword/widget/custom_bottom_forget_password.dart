import 'package:bookly/core/routes/route_helper.dart';
import 'package:bookly/features/auth/presentation/view/login/login_view.dart';
import 'package:flutter/material.dart';


class CustomBottomForgetPassword extends StatelessWidget {
  const CustomBottomForgetPassword({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Remember Password?",
          style: TextStyle(fontSize: 20),
        ),
        TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text(
              "Login Now",
              style:
              TextStyle(color: Color(0xff463598), fontSize: 18),
            )),
      ],
    );
  }
}
