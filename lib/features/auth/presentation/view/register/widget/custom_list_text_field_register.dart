import 'package:bookly/core/resources/size_manager.dart';
import 'package:bookly/features/auth/presentation/view/register/widget/custom_action_register_view.dart';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class CustomListTextFieldRegister extends StatefulWidget {
  const CustomListTextFieldRegister({
    super.key,
  });

  @override
  State<CustomListTextFieldRegister> createState() =>
      _CustomListTextFieldRegisterState();
}



final formKeyOfRegister = GlobalKey<FormState>();
bool showPassword = false;

class _CustomListTextFieldRegisterState
    extends State<CustomListTextFieldRegister> {
  final TextEditingController email = TextEditingController();
  final TextEditingController userName = TextEditingController();
  final TextEditingController password = TextEditingController();
  final TextEditingController confirmPassword = TextEditingController();
  void  registerUser() async {
    if (formKeyOfRegister.currentState!.validate()) {
      try {
        final AuthResponse res = await Supabase.instance.client.auth.signUp(
          email: email.text.trim(),
          password: password.text.trim(),
        );
        final User? user = res.user;

        if (user != null) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Successfully Resgister.!')),
          );
          userName.clear();
          email.clear();
          password.clear();
          confirmPassword.clear();
        }
      } catch (error) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Failure Resgister: $error')),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKeyOfRegister,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextFormField(
            style: const TextStyle(color: Colors.black),
            validator: (value) {
              final bool nameValid =
                  RegExp(r'^[a-zA-Z\s]+$').hasMatch(value ?? '');
              if (value!.isEmpty || value == null) {
                return 'Enter Your Name';
              } else if (!nameValid) {
                return "This Name is not valid";
              }
              return null;
            },
            keyboardType: TextInputType.text,
            controller: userName,
            decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(color: Colors.white),
                ),
                contentPadding: EdgeInsets.only(left: 15),
                filled: true,
                fillColor: Colors.white,
                hintText: "Username",
                hintStyle: TextStyle(color: Colors.grey),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12))),
          ),
          SizedBox(height: SizeManager.heightSize(context, 0.03),),
          TextFormField(
            style: const TextStyle(color: Colors.black),
            validator: (value) {
              final bool emailValid = RegExp(
                      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                  .hasMatch(value!);
              if (value.isEmpty) {
                return 'Please Enter Email';
              } else if (!emailValid) {
                return "This email is not Correct";
              }
              return null;
            },
            controller: email,
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
         SizedBox(height: SizeManager.heightSize(context, 0.03),),
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
            controller: password,
            keyboardType: TextInputType.visiblePassword,
            obscureText: showPassword,
            decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(color: Colors.white),
                ),
                contentPadding: EdgeInsets.only(left: 15),
                  suffixIcon: InkWell(
                    onTap: () {
                      setState(() {
                        showPassword = !showPassword;
                      });
                    },
                    child: Icon(
                      showPassword ? Icons.visibility_off_outlined : Icons.visibility_outlined,
                    ),
                  ),
                filled: true,
                fillColor: Colors.white,
                hintText: "Password",
                hintStyle: TextStyle(color: Colors.grey),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12))),
          ),
              SizedBox(height: SizeManager.heightSize(context, 0.03),),
          TextFormField(
            style: const TextStyle(color: Colors.black),
            validator: (value) {
              if (value!=password.text) {
                return "password is not correct";
              }
              else if(value!.isEmpty || value == null){
                return "Enter password again";
              }
              return null;
            },
            controller: confirmPassword,
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
            height: SizeManager.heightSize(context, 0.05),
          ),
          InkWell(
            onTap: () {
              registerUser();
            },
            child: CustomActionRegister(),
          ),
        ],
      ),
    );
  }
}
