import 'package:bookly/core/resources/size_manager.dart';
import 'package:bookly/core/theme/colors.dart';
import 'package:flutter/material.dart';

class CustomContainerBlurOnBoarding extends StatelessWidget {
  const CustomContainerBlurOnBoarding({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeManager.heightSize(context, 0.70),
      foregroundDecoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
           ColorsManager.whiteColor,
            ColorsManager.whiteColor.withOpacity(0.0),
          ],
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
          stops: const[0.14,0.4]
        ),
      ),
    );
  }
}
