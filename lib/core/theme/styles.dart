
import 'package:bookly/core/theme/colors.dart';
import 'package:flutter/material.dart';

class TextStylesManager{
  static TextStyle titleMedium=TextStyle(
      fontSize: 25,
      fontWeight: FontWeight.bold
  );
  static TextStyle  font24blackbold=TextStyle(
    color: ColorsManager.blackColor,
    fontSize: 24,
    fontWeight: FontWeight.bold,
  );
  static TextStyle  font15black=TextStyle(
    color: ColorsManager.blackColor,
    fontSize: 14,
  );
  static TextStyle  font16black38=TextStyle(
    color: ColorsManager.black38Color,
    fontSize: 16,
  );
  static TextStyle  font20whitebold=TextStyle(
    color: ColorsManager.whiteColor,
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );

}