import 'package:flutter/material.dart';

class SizeManager{
  static double widthSize(BuildContext context , double WidthSize){
    WidthSize=MediaQuery.of(context).size.height*WidthSize;
    return WidthSize;
  }
  static double heightSize(BuildContext context , double HeightSize){
    HeightSize=MediaQuery.of(context).size.height*HeightSize;
    return HeightSize;
  }
}