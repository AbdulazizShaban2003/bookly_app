import 'dart:async';

import 'package:bookly/core/routes/route_helper.dart';
import 'package:bookly/features/OnBoarding/presentation/view/onBoarding_view.dart';
import 'package:flutter/material.dart';

import '../../../../core/resources/asstes_manager.dart';

class BodySplashView extends StatefulWidget {
  const BodySplashView({
    super.key,
  });


  @override
  State<BodySplashView> createState() => _BodySplashViewState();
}
class _BodySplashViewState extends State<BodySplashView> {
  Timer ?_timer;

  @override
  void initState() {
    super.initState();
    navigateToHome();
  }

  void navigateToHome() {
     _timer=Timer(const Duration(seconds: 2), () => Navigator.push(
        context,
        RouteHelper.navigateTo(const OnBoardingView())
    ));
  }
  @override
  void dispose() {
    super.dispose();
    _timer?.cancel();

  }
  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,

      children:  [
        Image(image: AssetImage(AsstesManager.logoStart)),
        SizedBox(height: 15,),
        Text("Read for free",style: TextStyle(fontSize: 20),)
      ],
    );
  }
}