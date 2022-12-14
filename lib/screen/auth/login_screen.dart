import 'package:flutter/material.dart';
import 'package:flutter_backend/screen/auth/signup_screen.dart';
import 'package:flutter_backend/widget/custom/custom_elevated_button.dart';
import 'package:flutter_backend/widget/custom/custom_text.dart';
import 'package:flutter_backend/widget/custom/custom_textform_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  static String route = '/loginscreen';
  @override
  Widget build(BuildContext context) {
    TextEditingController email = TextEditingController();
    TextEditingController password = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Center(
          child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CustomTextFormField(
              hint: 'email',
              controller: email,
            ),
            const SizedBox(height: 20),
            CustomTextFormField(
              hint: 'password',
              controller: password,
            ),
            const SizedBox(height: 30),
            SizedBox(
                width: 130,
                child: CustomElevatedButton(title: 'Login', onTap: () {})),
            const SizedBox(height: 10),
            TextButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(SignupScreen.routes);
                },
                child: const ForText(
                  name: 'Already have account',
                  color: Colors.cyan,
                )),
          ],
        ),
      )),
    );
  }
}
