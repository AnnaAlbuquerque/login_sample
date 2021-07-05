import 'package:flutter/material.dart';

import 'package:login_sample/src/shared/utils/app_colors.dart';

class AppButton extends StatelessWidget {
  final Color buttonColor;
  final Function()? onPressed;
  const AppButton({
    Key? key,
    required this.buttonColor,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 80,
      decoration: BoxDecoration(
        color: buttonColor,
        shape: BoxShape.circle,
      ),
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(
          Icons.arrow_forward,
          color: AppColors.white,
          size: 35,
        ),
      ),
    );
  }
}
