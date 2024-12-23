import 'package:bookly/core/routes/route_helper.dart';
import 'package:bookly/core/resources/size_manager.dart';
import 'package:bookly/features/auth/presentation/view/changePassword/submit_chanag_password_view.dart';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class CustomTextFieldChangePassword extends StatefulWidget {
  const CustomTextFieldChangePassword({super.key});

  @override
  State<CustomTextFieldChangePassword> createState() =>
      _CustomTextFieldChangePasswordState();
}


class _CustomTextFieldChangePasswordState
    extends State<CustomTextFieldChangePassword> {
  final TextEditingController newPassController=TextEditingController();
  final TextEditingController confirmPassController=TextEditingController();
  final  formCreatePassword=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formCreatePassword,
      child: Column(
        children: [
          TextFormField(
            style: const TextStyle(color: Colors.black),
            validator: (value) {
              RegExp regex = RegExp(
                  r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
              if (value!.isEmpty) {
                return 'Please enter password';
              } else if (!regex.hasMatch(value)) {
                return 'Enter valid password';
              } else if (value.length < 7) {
                return 'Password should be at least 7 characters';
              }
              return null;
            },
            controller: newPassController,
            keyboardType: TextInputType.visiblePassword,
            decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(color: Colors.white),
                ),
                contentPadding: EdgeInsets.only(left: 15),
                filled: true,
                fillColor: Colors.white,
                hintText: "New password",
                hintStyle: TextStyle(color: Colors.grey),
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(12))),
          ),
          SizedBox(
            height: SizeManager.heightSize(context, 0.03),
          ),
          TextFormField(
            style: const TextStyle(color: Colors.black),
            validator: (value) {
              if (newPassController.text != value) {
                return "password is not correct";
              }
              return null;
            },
            controller: confirmPassController,
            keyboardType: TextInputType.visiblePassword,
            decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(color: Colors.white),
                ),
                contentPadding: EdgeInsets.only(left: 15),
                filled: true,
                fillColor: Colors.white,
                hintText: "Confirm password",
                hintStyle: TextStyle(color: Colors.grey),
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(12))),
          ),
          SizedBox(
            height: SizeManager.heightSize(context, 0.03),
          ),
          InkWell(
            onTap: (){

            },
            child: Container(
              alignment: Alignment.center,
              width: SizeManager.widthSize(context, 0.7),
              height: SizeManager.heightSize(context, 0.06),
              decoration: BoxDecoration(
                  color: Colors.white70,
                  borderRadius: BorderRadius.circular(15)),
              child: Text(
                "Create",
                style:
                TextStyle(fontSize: 20, color: Colors.black),
              ),
            ),
          )

        ],
      ),
    );
  }
}
