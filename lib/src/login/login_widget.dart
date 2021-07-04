import 'package:flutter/material.dart';
import 'package:login_sample/src/shared/utils/app_colors.dart';
import 'package:login_sample/src/shared/utils/app_textstyle.dart';
import 'package:login_sample/src/shared/widgets/app_textformfield.dart';

class LoginWidget extends StatefulWidget {
  LoginWidget({Key? key}) : super(key: key);

  @override
  _LoginWidgetState createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.55,
      width: MediaQuery.of(context).size.width * 0.8,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: AppColors.darkBlue,
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 25),
            child: Text("Sign in", style: AppTextStyle.title),
          ),
          Form(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(25, 50, 25, 15),
              child: Column(
                children: [
                  AppTextFormField(
                    hintText: "Email",
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  AppTextFormField(
                    hintText: "Senha",
                    isObscureText: true,
                  ),
                ],
              ),
            ),
          ),
          FractionallySizedBox(
            widthFactor: 1.0,
            child: Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                child: Padding(
                  padding: const EdgeInsets.only(right: 15.0),
                  child: Text(
                    "Forgot Password ?",
                    style: AppTextStyle.body,
                  ),
                ),
                onPressed: () {},
              ),
            ),
          ),
        ],
      ),
    );
  }
}
