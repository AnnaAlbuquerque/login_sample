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
                    controller.swapColor();
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
              Positioned(
                bottom: 90,
                right: 50,
                child: Container(
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                    color: controller.buttonColor,
                    shape: BoxShape.circle,
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_forward,
                      color: AppColors.white,
                      size: 35,
                    ),
                  ),
                ),
              ),
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
