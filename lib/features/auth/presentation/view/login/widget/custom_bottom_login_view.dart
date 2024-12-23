import 'package:bookly/core/resources/size_manager.dart';
import 'package:bookly/features/auth/presentation/view/register/register_view.dart';
import 'package:flutter/material.dart';

class CustomBottomLoginView extends StatelessWidget {
  const CustomBottomLoginView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Don't have an account?",
          style: TextStyle(fontSize: 20),
        ),
        TextButton(
            onPressed: () {
              Navigator.push(context,MaterialPageRoute(builder: (_)=>RegisterView()));
            },
            child: Text(
              "Register Now",
              style:
              TextStyle(color: Color(0xff463598), fontSize: 18),
            )),
        SizedBox(
          height: SizeManager.heightSize(context, 0.04),
        )
      ],
    );
  }
}
