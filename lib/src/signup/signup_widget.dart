import 'package:flutter/material.dart';
import 'package:login_sample/src/shared/utils/app_colors.dart';
import 'package:login_sample/src/shared/utils/app_textstyle.dart';
import 'package:login_sample/src/shared/validators/form_validator.dart';
import 'package:login_sample/src/shared/widgets/app_button.dart';
import 'package:login_sample/src/shared/widgets/app_textformfield.dart';

class SignupWidget extends StatefulWidget {
  SignupWidget({Key? key}) : super(key: key);

  @override
  _SignupWidgetState createState() => _SignupWidgetState();
}

class _SignupWidgetState extends State<SignupWidget> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController password2Controller = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  FormValidators validator = FormValidators();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.60,
      child: Stack(
        children: [
          Container(
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
                  key: _formKey,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(25, 40, 25, 15),
                    child: Column(
                      children: [
                        AppTextFormField(
                            hintText: "Email",
                            controller: emailController,
                            validator: (value) {
                              return validator.validateEmail(value);
                            }),
                        SizedBox(
                          height: 25,
                        ),
                        AppTextFormField(
                          hintText: "Password",
                          isObscureText: true,
                          controller: passwordController,
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        AppTextFormField(
                          hintText: "Repeat Password",
                          isObscureText: true,
                          controller: password2Controller,
                          validator: (value) {
                            return validator.validatePassword(
                              value,
                              passwordController.value.text,
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            right: 50,
            child: AppButton(
              buttonColor: AppColors.darkBlue,
              onPressed: () {
                FocusScope.of(context).unfocus();
                bool? isValid = _formKey.currentState?.validate();
                if (isValid ?? false) {
                  print("válido");
                } else {
                  print("invalido");
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
