import 'package:flutter/material.dart';
import 'package:login_sample/src/shared/utils/app_colors.dart';
import 'package:login_sample/src/shared/utils/app_textstyle.dart';
import 'package:login_sample/src/shared/widgets/app_textformfield.dart';

class SignupWidget extends StatefulWidget {
  SignupWidget({Key? key}) : super(key: key);

  @override
  _SignupWidgetState createState() => _SignupWidgetState();
}

class _SignupWidgetState extends State<SignupWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.55,
      width: MediaQuery.of(context).size.width * 0.8,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: AppColors.cyan,
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 25),
            child: Text("Sign up", style: AppTextStyle.title),
          ),
          Form(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(25, 40, 25, 15),
              child: Column(
                children: [
                  AppTextFormField(
                    hintText: "Email",
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  AppTextFormField(
                    hintText: "Password",
                    isObscureText: true,
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  AppTextFormField(
                    hintText: "Repeat Password",
                    isObscureText: true,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
