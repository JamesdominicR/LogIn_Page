import 'package:flutter/material.dart';
import 'package:sample_login_screen/screen/splash.dart';

// ignore: constant_identifier_names
const SAVE_KEY_NAME = 'UserLoggedIn';
void main() {
  runApp(MyApp());
}

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ScreenSplash(),
    );
  }
}
