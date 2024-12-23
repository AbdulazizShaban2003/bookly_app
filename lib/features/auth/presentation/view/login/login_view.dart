import 'package:bookly/core/resources/asstes_manager.dart';
import 'package:bookly/core/resources/size_manager.dart';
import 'package:bookly/features/auth/presentation/view/login/widget/custom_forget_password.dart';
import 'package:bookly/features/auth/presentation/view/login/widget/custom_text_field_login_view.dart';
import 'package:bookly/features/auth/presentation/view/login/widget/custom_bottom_login_view.dart';
import 'package:bookly/features/auth/presentation/widget/custom_social_auth.dart';
import 'package:bookly/features/auth/presentation/widget/custom_title_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff7A68FF),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: SizeManager.widthSize(context, 0.02)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: SizeManager.heightSize(context, 0.1)),
              Center(
                  child: Image(
                image: AssetImage(AsstesManager.logoStart),
                width: SizeManager.widthSize(context, 0.4),
                height: SizeManager.heightSize(context, 0.05),
              )),
              SizedBox(height: SizeManager.heightSize(context, 0.1)),
              CustomTitleView(
                titlePage: "Welcome back! Glad \n to see you, Again!",
              ),
              SizedBox(
                height: SizeManager.heightSize(context, 0.05),
              ),
              CustomListTextFieldLoginView(),


              SizedBox(
                height: SizeManager.heightSize(context, 0.05),
              ),
              CustomSocialAuth(
                operation: 'Login',
              ),
              SizedBox(
                height: SizeManager.heightSize(context, 0.04),
              ),
              CustomBottomLoginView(),
              SizedBox(
                height: SizeManager.heightSize(context, 0.08),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
