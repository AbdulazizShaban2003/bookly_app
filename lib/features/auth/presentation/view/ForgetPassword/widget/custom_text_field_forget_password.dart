import 'package:bookly/core/resources/size_manager.dart';
import 'package:flutter/material.dart';

class CustomTextFieldForgetPassword extends StatefulWidget {
  const CustomTextFieldForgetPassword({
    super.key,
  });

  @override
  State<CustomTextFieldForgetPassword> createState() => _CustomTextFieldForgetPasswordState();
}


class _CustomTextFieldForgetPasswordState extends State<CustomTextFieldForgetPassword> {
  final controllerEmailForForgetPassword=TextEditingController();
  final  formKeyOfChangePassword = GlobalKey<FormState>();
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          TextFormField(
            style: const TextStyle(color: Colors.black),
            onFieldSubmitted: (value){

            },
            validator: (value) {
              final bool emailValid = RegExp(
                  r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                  .hasMatch(value!);
              if (value.isEmpty) {
                return 'Enter Email';
              } else if (!emailValid) {
                return "Email is not valid";
              }
              return null;
            },
            controller: controllerEmailForForgetPassword,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(color: Colors.white),
                ),
                contentPadding: EdgeInsets.only(left: 15),
                filled: true,
                fillColor: Colors.white,
                hintText: "Email",
                hintStyle: TextStyle(color: Colors.grey),
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(12))),
          ),
          SizedBox(height: SizeManager.heightSize(context, 0.08),),
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
                "Send Code",
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
            ),
          ),
        ],
      ),

    );
  }
}
