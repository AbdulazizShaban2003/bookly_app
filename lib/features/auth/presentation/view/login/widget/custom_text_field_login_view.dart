import 'package:bookly/core/resources/size_manager.dart';
import 'package:bookly/features/auth/presentation/view/login/widget/custom_action_login_view.dart';
import 'package:bookly/features/auth/presentation/view/login/widget/custom_forget_password.dart';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class CustomListTextFieldLoginView extends StatefulWidget {
  const CustomListTextFieldLoginView({
    super.key,
  });
  @override
  State<CustomListTextFieldLoginView> createState() => _CustomListTextFieldLoginViewState();
}



class _CustomListTextFieldLoginViewState extends State<CustomListTextFieldLoginView> {
  final  formKeyOfLogin = GlobalKey<FormState>();
  bool showPassword=true;
 final  TextEditingController controllerEmail = TextEditingController();
 final TextEditingController controllerPass = TextEditingController();

 void  loginUser() async {
   if (formKeyOfLogin.currentState!.validate()) {
     try {
       final AuthResponse res = await Supabase.instance.client.auth.signInWithPassword(
         email: controllerEmail.text.trim(),
         password: controllerPass.text.trim(),
       );
       final User? user = res.user;

       if (user != null) {
         ScaffoldMessenger.of(context).showSnackBar(
           SnackBar(content: Text('Successfully Login.!')),
         );
         controllerEmail.clear();
         controllerPass.clear();

       }
     } catch (error) {
       ScaffoldMessenger.of(context).showSnackBar(
         SnackBar(content: Text('Failure Login: $error')),
       );
     }
   }
 }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKeyOfLogin,
      child: Column(
        children: [
          TextFormField(
            style: const TextStyle(color: Colors.black),
            validator: (value) {
              final bool emailValid = RegExp(
                  r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                  .hasMatch(value!);
              if (value.isEmpty) {
                return 'Please Enter Email';
              } else if (!emailValid) {
                return "This email is not valid";
              }
              return null;
            },
            controller: controllerEmail,
            decoration: InputDecoration(
                contentPadding: EdgeInsets.only(left: 15),
                filled: true,
                fillColor: Colors.white,
                hintText: "Enter your email",
                hintStyle: TextStyle(color: Colors.grey),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12))),
          ),
          SizedBox(
            height: SizeManager.heightSize(context, 0.025),
          ),
          TextFormField(
            style: const TextStyle(color: Colors.black),
            obscureText: showPassword,
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
            controller: controllerPass,
            keyboardType: TextInputType.visiblePassword,
            decoration: InputDecoration(
                contentPadding: EdgeInsets.only(left: 15),
                suffixIcon: InkWell(
                  onTap: (){
                    setState(() {
                      showPassword=!showPassword;

                    });
                  },
                  child: Icon(
                    showPassword ? Icons.visibility_off_outlined : Icons.visibility_outlined,
                  ),                ),
                filled: true,
                fillColor: Colors.white,
                hintText: "Enter your password",
                hintStyle: TextStyle(color: Colors.grey),
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(12))),
          ),
          SizedBox(
            height: SizeManager.heightSize(context, 0.009),
          ),
          CustomForgetPassword(),
          SizedBox(
            height: SizeManager.heightSize(context, 0.025),
          ),
          InkWell(
            onTap: () {
loginUser();
            },
            child: CustomActonLogin(),
          ),

        ],
      ),
    );
  }
}


