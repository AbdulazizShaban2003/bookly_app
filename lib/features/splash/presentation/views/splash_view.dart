import 'dart:async';
import 'package:bookly/core/resources/size_manager.dart';
import 'package:bookly/core/routes/route_helper.dart';
import 'package:bookly/features/OnBoarding/presentation/view/onBoarding_view.dart';
import 'package:bookly/features/home/persentation/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../core/resources/asstes_manager.dart';
import '../../../../core/theme/styles.dart';

class SplashView extends StatefulWidget {
  const SplashView({
    super.key, required this.isLoggedIn,
  });

  final bool isLoggedIn;

  @override
  State<SplashView> createState() => _SplashViewState();
}
class _SplashViewState extends State<SplashView> {
  Timer ?_timer;
   bool? isLoggedIn;

  void saveAccount()async{
    SharedPreferences pref = await SharedPreferences.getInstance();
    if (pref.containsKey('Save_account')) {
      isLoggedIn = pref.getBool('Save_account')!;
    } else {
      isLoggedIn = false;
    }

  }

  @override
  void initState() {
    super.initState();
    navigateToHome();
  }

  void navigateToHome() {
     _timer=Timer(const Duration(seconds: 2), () => Navigator.push(
        context,
        RouteHelper.navigateTo(isLoggedIn!? OnBoardingView() : HomeView())
    ));
  }
  @override
  void dispose() {
    super.dispose();
    _timer?.cancel();

  }
  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children:  [
        Image(image: AssetImage(AsstesManager.logoStart)),
        SizedBox(height: SizeManager.heightSize(context, 0.03),),
        Text("Read for free",style: TextStylesManager.font20,)
      ],
    );
  }
}