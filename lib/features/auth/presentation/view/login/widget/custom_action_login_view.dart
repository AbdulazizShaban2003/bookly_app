import 'package:bookly/core/resources/size_manager.dart';
import 'package:flutter/material.dart';

class CustomActonLogin extends StatelessWidget {
  const CustomActonLogin({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        alignment: Alignment.center,
        width: SizeManager.widthSize(context, 0.6),
        height: SizeManager.heightSize(context, 0.06),
        decoration: BoxDecoration(
            color: Colors.white70,
            borderRadius: BorderRadius.circular(15)),
        child: Text(
          "Login",
          style: TextStyle(fontSize: 20, color: Colors.black),
        ),
      ),
    );
  }
}
