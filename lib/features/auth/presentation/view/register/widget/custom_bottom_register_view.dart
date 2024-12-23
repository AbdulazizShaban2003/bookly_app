import 'package:flutter/material.dart';

class CustomBottomRegisterView extends StatelessWidget {
  const CustomBottomRegisterView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
         Text(
          "Already have an account?",
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
            ))
      ],
    );
  }
}
