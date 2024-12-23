import 'package:bookly/core/resources/asstes_manager.dart';
import 'package:bookly/core/resources/size_manager.dart';
import 'package:bookly/features/auth/presentation/widget/custom_title_view.dart';
import 'package:flutter/material.dart';

class SubmitChanagPasswordView extends StatelessWidget {
  const SubmitChanagPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: SizeManager.widthSize(context, 0.025)),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: AssetImage(AsstesManager.submitChanagePassword),
                width: SizeManager.widthSize(context, 0.7),
                height: SizeManager.widthSize(context, 0.2),
              ),
              CustomTitleView(titlePage: 'Password Changed!'),
              SizedBox(
                height: SizeManager.heightSize(context, 0.01),
              ),
              Text(
                "Your password has been changed successfully.",
                style: TextStyle(
                  color: Colors.black38,
                  fontSize: 22,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: SizeManager.heightSize(context, 0.08),
              ),
              Container(
                alignment: Alignment.center,
                width: SizeManager.widthSize(context, 0.7),
                height: SizeManager.heightSize(context, 0.06),
                decoration: BoxDecoration(
                    color: Colors.white70,
                    borderRadius: BorderRadius.circular(15)),
                child: Text(
                  "Okey",
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
