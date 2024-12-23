import 'package:bookly/core/resources/size_manager.dart';
import 'package:bookly/features/auth/presentation/view/login/login_view.dart';
import 'package:bookly/features/auth/presentation/view/register/widget/custom_action_register_view.dart';
import 'package:bookly/features/auth/presentation/view/register/widget/custom_bottom_register_view.dart';
import 'package:bookly/features/auth/presentation/view/register/widget/custom_list_text_field_register.dart';
import 'package:bookly/features/auth/presentation/widget/custom_social_auth.dart';
import 'package:bookly/features/auth/presentation/widget/custom_title_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import '../../widget/custom_appBar_view.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff7A68FF),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: SizeManager.widthSize(context, 0.025)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: SizeManager.heightSize(context, 0.1)),
              CustomAppBarView(),
              SizedBox(height: SizeManager.heightSize(context, 0.03)),
              CustomTitleView(
                titlePage: 'Hello! Register to get started',
              ),
              SizedBox(
                height: SizeManager.heightSize(context, 0.05),
              ),
              CustomListTextFieldRegister(),

              SizedBox(
                height: SizeManager.heightSize(context, 0.04),
              ),
              CustomSocialAuth(
                operation: 'Register',
              ),
              SizedBox(
                height: SizeManager.heightSize(context, 0.04),
              ),
              CustomBottomRegisterView()
            ],
          ),
        ),
      ),
    );
  }
}

