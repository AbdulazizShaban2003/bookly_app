import 'package:bookly/core/resources/size_manager.dart';
import 'package:flutter/material.dart';

class CustomActionRegister extends StatelessWidget {
  const CustomActionRegister({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: SizeManager.widthSize(context, 0.5),
      height: SizeManager.heightSize(context, 0.06),
      decoration: BoxDecoration(
          color: Colors.white70,
          borderRadius: BorderRadius.circular(15)),
      child: Text(
        "Register",
        style: TextStyle(fontSize: 20, color: Colors.black),
      ),
    );
  }
}
