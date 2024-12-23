import 'package:bookly/core/resources/size_manager.dart';
import 'package:bookly/features/auth/presentation/view/changePassword/widget/custom_text_field_change_password.dart';
import 'package:bookly/features/auth/presentation/view/changePassword/widget/custom_title_change_password.dart';
import 'package:bookly/features/auth/presentation/widget/custom_appBar_view.dart';
import 'package:flutter/material.dart';

class ChangePasswordView extends StatefulWidget {
  const ChangePasswordView({super.key});

  @override
  State<ChangePasswordView> createState() => _ChangePasswordViewState();
}

class _ChangePasswordViewState extends State<ChangePasswordView> {
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
                      SizedBox(height: SizeManager.heightSize(context, 0.1)),
                      CustomTitleChangePassword(),
                      SizedBox(
                        height: SizeManager.heightSize(context, 0.06),
                      ),
                      CustomTextFieldChangePassword(),
                      SizedBox(
                        height: SizeManager.heightSize(context, 0.09),
                      ),
                    ]))));
  }
}

