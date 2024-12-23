import 'package:bookly/core/resources/size_manager.dart';
import 'package:flutter/material.dart';

class CustomImageOnBoarding extends StatelessWidget {
  const CustomImageOnBoarding({
    super.key,
    required this.image,
  });

  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: SizeManager.widthSize(context, 1.0),
        height: SizeManager.heightSize(context, 0.65) ,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(image), fit: BoxFit.cover)));
  }
}