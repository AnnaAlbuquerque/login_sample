import 'package:flutter/material.dart';
import 'package:login_sample/src/login/login_widget.dart';

class MainScreen extends StatefulWidget {
  MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      bottom: true,
      child: Scaffold(
        body: Center(
          child: Stack(
            children: [
              LoginWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
