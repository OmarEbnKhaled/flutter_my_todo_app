import 'dart:io';

import 'package:core/utils/colors.dart';
import 'package:core/widgets/custom_text_form_field.dart';
import 'package:dependencies/dependencies.dart';
import 'package:flutter/material.dart';

import 'google_sign_in_up_btn.dart';

class SignUpWidget extends StatefulWidget {
  const SignUpWidget({super.key});

  @override
  State<SignUpWidget> createState() => _SignUpWidgetState();
}

class _SignUpWidgetState extends State<SignUpWidget> {
  File? file;
  String? imageName;
  String? url;

  getImage() async {
    final ImagePicker picker = ImagePicker();
    // Pick an image.
    // final XFile? image = await picker.pickImage(source: ImageSource.gallery);
    // Capture a photo.
    final XFile? imageCamera =
        await picker.pickImage(source: ImageSource.camera);
    if (imageCamera != null) {
      file = File(imageCamera.path);
      imageName = basename(imageCamera.path);
    }
    url = null;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(36),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Sign Up',
            style: TextStyle(fontSize: 24, color: myPrimaryColor),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 25),
          InkWell(
            onTap: () {
              getImage();
            },
            child: Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                border: Border.all(
                  width: 1.5,
                  color: Colors.grey,
                ),
                shape: BoxShape.circle,
                color: Colors.grey[200],
              ),
              child: const Icon(
                Icons.camera_alt_outlined,
                size: 50,
                color: Colors.grey,
              ),
            ),
          ),
          const SizedBox(height: 25),
          const CustomTextFormField(hint: 'User name'),
          const SizedBox(height: 10),
          const CustomTextFormField(hint: 'Email'),
          const SizedBox(height: 10),
          const CustomTextFormField(hint: 'Password'),
          const SizedBox(height: 10),
          const CustomTextFormField(hint: 'Confirm password'),
          const SizedBox(height: 40),
          MaterialButton(
            onPressed: () {},
            color: myPrimaryColor,
            child: const Text(
              'Sign Up',
              style: TextStyle(color: Colors.white),
            ),
          ),
          const SizedBox(height: 10),
          const Text('OR'),
          const SizedBox(height: 10),
          GoogleSignInUpBtn(
            onPressed: () {},
            label: 'Sign Up with Google',
          ),
          const SizedBox(height: 50),
          TextButton(
            onPressed: () {
              Modular.to.pop();
            },
            child: const Text('I am already have account, Sign In'),
          ),
        ],
      ),
    );
  }
}
