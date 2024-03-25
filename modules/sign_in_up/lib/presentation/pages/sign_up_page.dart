import 'package:flutter/material.dart';

import '../widgets/sign_up_widget.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: SingleChildScrollView(child: _buildBody())),
    );
  }

  Widget _buildBody() {
    return const SignUpWidget();
  }
}
