import 'package:core/utils/colors.dart';
import 'package:core/widgets/custom_text_form_field.dart';
import 'package:dependencies/dependencies.dart';
import 'package:flutter/material.dart';

import 'google_sign_in_up_btn.dart';

class SignInWidget extends StatelessWidget {
  const SignInWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(36),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Welcome to \nMy ToDo App.',
            style: TextStyle(fontSize: 24),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 50),
          const CustomTextFormField(hint: 'Email'),
          const SizedBox(height: 10),
          const CustomTextFormField(hint: 'Password'),
          const SizedBox(height: 40),
          MaterialButton(
            onPressed: () {
              Modular.to.pushNamed('/lists/');
            },
            color: myPrimaryColor,
            child: const Text(
              'Sign In',
              style: TextStyle(color: Colors.white),
            ),
          ),
          const SizedBox(height: 10),
          const Text('OR'),
          const SizedBox(height: 10),
          GoogleSignInUpBtn(
            onPressed: () {},
            label: 'Sign in with Google',
          ),
          const SizedBox(height: 50),
          TextButton(
            onPressed: () {
              Modular.to.pushNamed('/auth/signUp');
            },
            child: const Text('Sign Up'),
          ),
        ],
      ),
    );
  }
}
