import 'package:bookly/features/splash/presentation/views/splashViewBody.dart';
import 'package:flutter/material.dart';

class StartView extends StatelessWidget {
  const StartView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:  Center(
        child:  BodySplashView(),
      ),
    );
  }
}

