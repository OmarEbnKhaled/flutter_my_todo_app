import 'package:flutter/material.dart';

import '../widgets/sign_in_widget.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: SingleChildScrollView(child: _buildBody())),
    );
  }

  Widget _buildBody() {
    return const SignInWidget();
  }
}
