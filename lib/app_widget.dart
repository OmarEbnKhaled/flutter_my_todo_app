// ignore_for_file: avoid_print

import 'package:core/app_theme/app_theme.dart';
import 'package:dependencies/dependencies.dart' as dependencies;
import 'package:flutter/material.dart';

class AppWidget extends StatefulWidget {
  const AppWidget({super.key});

  @override
  State<AppWidget> createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  @override
  void initState() {
    dependencies.FirebaseAuth.instance.authStateChanges().listen(
      (dependencies.User? user) {
        if (user == null) {
          print('================== User is currently signed out!');
        } else {
          print('================== User is signed in!');
        }
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (dependencies.FirebaseAuth.instance.currentUser == null) {
      dependencies.Modular.setInitialRoute('/auth/signIn');
    } else {
      dependencies.Modular.setInitialRoute('/lists/');
    }

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: appTheme,
      routerConfig: dependencies.Modular.routerConfig,
    );
  }
}
