import 'package:core/app_theme/app_theme.dart';
import 'package:dependencies/dependencies.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Modular.setInitialRoute('/auth/signIn');

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: appTheme,
      routerConfig: Modular.routerConfig,
    );
  }
}
