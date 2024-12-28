import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class AuthFunctions {
  static Future<void> loginUser({
    required BuildContext context,
    required TextEditingController emailController,
    required TextEditingController passwordController,
    required GlobalKey<FormState> formKey,
  }) async {
    if (formKey.currentState!.validate()) {
      try {
        final response = await Supabase.instance.client.auth.signInWithPassword(
          email: emailController.text.trim(),
          password: passwordController.text.trim(),
        );
        final user = response.user;

        if (user != null) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Successfully logged in.')),
          );
          emailController.clear();
          passwordController.clear();
        }
      } on Exception catch (e) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Login failed: ${e.toString()}')),
        );
      }
    }
  }
  static Future<void>  registerUser({
    required BuildContext context,
    required TextEditingController emailController,
    required TextEditingController passwordController,
    required TextEditingController userName,
    required TextEditingController confirmPassword,


    required GlobalKey<FormState> formKey,

}) async {
    if (formKey.currentState!.validate()) {
      try {
        final AuthResponse res = await Supabase.instance.client.auth.signUp(
          email: emailController.text.trim(),
          password: passwordController.text.trim(),
        );
        final User? user = res.user;

        if (user != null) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Successfully Resgister.!')),
          );
          userName.clear();
          emailController.clear();
          passwordController.clear();
          confirmPassword.clear();
        }
      } catch (error) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Failure Resgister: $error')),
        );
      }
    }
  }
}