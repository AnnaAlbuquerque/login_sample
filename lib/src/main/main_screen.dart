import 'package:flutter/material.dart';
import 'package:login_sample/src/login/login_widget.dart';
import 'package:login_sample/src/main/main_controller.dart';
import 'package:login_sample/src/shared/utils/app_colors.dart';
import 'package:login_sample/src/signup/signup_widget.dart';

class MainScreen extends StatefulWidget {
  MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentIndex = 0;
  MainController controller = MainController();

  @override
  void initState() {
    super.initState();
    controller.stackChildren.add(SignupWidget());
    controller.stackChildren.add(LoginWidget());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      bottom: true,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Stack(
            alignment: Alignment.centerRight,
            children: [
              Positioned(
                top: 110,
                left: 30,
                child: GestureDetector(
                  onTap: () {
                    controller.swapOrder();
                    setState(() {});
                  },
                  child: controller.stackChildren[0],
                ),
              ),
              Positioned(
                right: 30,
                top: 180,
                child: controller.stackChildren[1],
              ),
              // Positioned(
              //   top: 110,
              //   left: 30,
              //   child: SignupWidget(),
              // ),
              // Positioned(
              //   right: 30,
              //   top: 180,
              //   child: LoginWidget(),
              // ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
              )
            ],
          ),
        ),
      ),
    );
  }
}
