import 'package:flutter/material.dart';

class CustomTitleView extends StatelessWidget {
   const CustomTitleView({
    super.key, required this.titlePage,
  });
final String titlePage;
  @override
  Widget build(BuildContext context) {
    return Text(
     titlePage,
      style: TextStyle(
          fontSize: 28,
          fontWeight: FontWeight.bold,
          color: Colors.white),
    );
  }
}
