import 'package:bookly/features/OnBoarding/data/page_model.dart';
import 'package:bookly/features/OnBoarding/presentation/widget/custom_body_onBoarding_view.dart';
import 'package:flutter/material.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

int countPage = 0;

final listController = FetshPageModel.listOfData;
final pageController = PageController();

class _OnBoardingViewState extends State<OnBoardingView> {
  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView.builder(
      onPageChanged: (index) {
        setState(() {
          countPage = index;
        });
      },
      controller: pageController,
      itemCount: FetshPageModel.listOfData.length,
      itemBuilder: (BuildContext context, int index) {
        return BodyOnBoardingView(
          title: listController[index].title,
          subtitle: listController[index].subtitle,
          nameButton: listController[index].nameButton,
          image: listController[index].image,
          action: listController[index].action,
        );
      },
    ));
  }
}
