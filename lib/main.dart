import 'package:flutter/material.dart';
import 'package:dependencies/dependencies.dart';

import 'app_module.dart';
import 'app_widget.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: 'AIzaSyDd3R202geUp3dD3cr-ZGoeANxGZVx39aw',
      appId: '1:354326317476:android:9ae8ecba723a5498b5d931',
      messagingSenderId: '354326317476',
      projectId: 'flutter-my-todo-app-e564b',
      // storageBucket: 'myapp-b9yt18.appspot.com',
    ),
  );
  runApp(
    ModularApp(
      module: AppModule(),
      child: const AppWidget(),
    ),
  );
}
