import 'package:bookly/core/resources/size_manager.dart';
import 'package:bookly/core/theme/colors.dart';
import 'package:bookly/core/theme/styles.dart';
import 'package:bookly/features/OnBoarding/presentation/view/onBoarding_view.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CustomTitleOnBoarding extends StatelessWidget {
  const CustomTitleOnBoarding({
    super.key,
    required this.title,
    required this.subtitle,
  });

  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: SizeManager.widthSize(context, 0.03)),
      child: Column(
        children: [
          SmoothPageIndicator(
            count: listController.length,
            effect: WormEffect(
                dotHeight: SizeManager.heightSize(context, 0.012),
                dotWidth: SizeManager.widthSize(context, 0.012),
                activeDotColor:ColorsManager.deepPurpleColor), controller: pageController,
          ),
          SizedBox(
            height: SizeManager.heightSize(context, 0.06),
          ),
          Text(
            title,
            textAlign: TextAlign.center,
            style: TextStylesManager.font24blackbold,
          ),
           SizedBox(height: SizeManager.heightSize(context, 0.05)),
          Text(
            subtitle,
            textAlign: TextAlign.center,
            style: TextStylesManager.font15black,
          ),
        ],
      ),
    );
  }
}
