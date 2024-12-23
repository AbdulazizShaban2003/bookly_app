import 'package:bookly/core/resources/size_manager.dart';
import 'package:bookly/features/OnBoarding/presentation/view/onBoarding_view.dart';
import 'package:bookly/features/OnBoarding/presentation/widget/custom_action_onBoarding.dart';
import 'package:bookly/features/OnBoarding/presentation/widget/custom_container_blur_onBoarding.dart';
import 'package:bookly/features/OnBoarding/presentation/widget/custom_image_onBoading.dart';
import 'package:bookly/features/OnBoarding/presentation/widget/custom_title_onBoarding.dart';
import 'package:flutter/material.dart';

class BodyOnBoardingView extends StatelessWidget {
  const BodyOnBoardingView({
    super.key,
    required this.title,
    required this.subtitle,
    required this.nameButton,
    required this.image,
    required this.action,
  });

  final String title;
  final String subtitle;
  final String nameButton;
  final String image;
  final String action;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CustomImageOnBoarding(image: image),
        CustomContainerBlurOnBoarding(),
        Positioned(
          bottom: SizeManager.heightSize(context, 0.03),
          left: 0,
          right: 0,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              CustomTitleOnBoarding(title: title, subtitle: subtitle),
              SizedBox(height: SizeManager.heightSize(context, 0.02)),
              CustomActionOnBoarding(nameButton: nameButton, action: action, countPage: countPage,),
            ],
          ),
        ),
      ],
    );
  }
}
