import 'package:flutter/material.dart';
import 'package:login_sample/src/main/main_screen.dart';

class App extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
    );
  }
}
