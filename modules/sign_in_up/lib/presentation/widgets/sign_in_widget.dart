import 'package:core/utils/colors.dart';
import 'package:core/widgets/custom_text_form_field.dart';
import 'package:dependencies/dependencies.dart' as dependencies;
import 'package:flutter/material.dart';

import '../bloc/sign_in_bloc/sign_in_bloc.dart';
import 'google_sign_in_up_btn.dart';

class SignInWidget extends StatefulWidget {
  const SignInWidget({
    super.key,
  });

  @override
  State<SignInWidget> createState() => _SignInWidgetState();
}

class _SignInWidgetState extends State<SignInWidget> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  GlobalKey<FormState> formState = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(36),
      child: Form(
        autovalidateMode: autovalidateMode,
        key: formState,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Welcome to \nMy ToDo App.',
              style: TextStyle(fontSize: 24, color: myPrimaryColor),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 50),
            CustomTextFormField(
              hint: 'Email',
              controller: emailController,
              validator: (val) => val == '' ? "Can't to be empty" : null,
            ),
            const SizedBox(height: 10),
            CustomTextFormField(
              hint: 'Password',
              controller: passwordController,
              validator: (val) => val == '' ? "Can't to be empty" : null,
            ),
            const SizedBox(height: 40),
            MaterialButton(
              onPressed: () {
                if (formState.currentState!.validate()) {
                  dependencies.BlocProvider.of<SignInBloc>(context)
                      .add(SignInEmailPasswordEvent(
                    email: emailController.text.trim(),
                    password: passwordController.text.trim(),
                  ));
                } else {
                  setState(() {
                    autovalidateMode = AutovalidateMode.always;
                  });
                }
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
              onPressed: () {
                dependencies.BlocProvider.of<SignInBloc>(context).add(
                  SignInGoogleEvent(),
                );
              },
              label: 'Sign in with Google',
            ),
            const SizedBox(height: 50),
            TextButton(
              onPressed: () {
                dependencies.Modular.to.pushNamed('/auth/signUp');
              },
              child: const Text('Sign Up'),
            ),
          ],
        ),
      ),
    );
  }
}
