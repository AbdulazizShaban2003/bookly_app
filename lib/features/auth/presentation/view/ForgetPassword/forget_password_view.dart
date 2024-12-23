import 'package:bookly/features/auth/presentation/view/ForgetPassword/widget/custom_bottom_forget_password.dart';
import 'package:bookly/features/auth/presentation/view/ForgetPassword/widget/custom_text_field_forget_password.dart';
import 'package:bookly/features/auth/presentation/view/ForgetPassword/widget/custom_title_forget_password.dart';
import 'package:bookly/features/auth/presentation/view/login/login_view.dart';
import 'package:bookly/features/auth/presentation/widget/custom_appBar_view.dart';
import 'package:flutter/material.dart';
import '../../../../../core/resources/size_manager.dart';

class ForgetPasswordView extends StatefulWidget {
  const ForgetPasswordView({super.key});

  @override
  State<ForgetPasswordView> createState() => _ForgetPasswordViewState();
}

class _ForgetPasswordViewState extends State<ForgetPasswordView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: SizeManager.widthSize(context, 0.025)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: SizeManager.heightSize(context, 0.09)),
              CustomAppBarView(),
              SizedBox(height: SizeManager.heightSize(context, 0.2)),
              CustomTitleForgetPassword(),
              SizedBox(
                height: SizeManager.heightSize(context, 0.06),
              ),
              CustomTextFieldForgetPassword(),
              SizedBox(height: SizeManager.heightSize(context, 0.08),),
              CustomBottomForgetPassword()
            ],
          ),
        ),
      ),
    );
  }
}
