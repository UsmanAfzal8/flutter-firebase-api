import 'package:flutter/material.dart';
import 'package:flutter_backend/screen/auth/login_screen.dart';
import 'package:flutter_backend/widget/custom/custom_elevated_button.dart';
import 'package:flutter_backend/widget/custom/custom_text.dart';
import 'package:flutter_backend/widget/custom/custom_textform_field.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});
  static String routes = 'signupscreen';
  @override
  Widget build(BuildContext context) {
    TextEditingController email = TextEditingController();
    TextEditingController name = TextEditingController();
    TextEditingController password = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Signup'),
      ),
      body: Center(
          child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CustomTextFormField(
              hint: 'name',
              controller: name,
            ),
            const SizedBox(height: 20),
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
                child: CustomElevatedButton(title: 'Signup', onTap: () {})),
            const SizedBox(height: 10),
            TextButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(LoginScreen.route);
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
