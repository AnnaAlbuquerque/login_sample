import 'package:flutter/material.dart';
import 'package:login_sample/src/login/login_widget.dart';
import 'package:login_sample/src/shared/utils/app_colors.dart';
import 'package:login_sample/src/signup/signup_widget.dart';

class MainController {
  List<Widget> stackChildren = [];
  Color buttonColor = AppColors.cyan;

  void swapOrder() {
    Widget _first = stackChildren[0];
    stackChildren.removeAt(0);
    stackChildren.add(_first);
  }
}
