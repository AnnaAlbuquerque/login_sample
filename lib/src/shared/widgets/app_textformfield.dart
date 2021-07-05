import 'package:flutter/material.dart';
import 'package:login_sample/src/shared/utils/app_colors.dart';

class AppTextFormField extends StatefulWidget {
  AppTextFormField({
    Key? key,
    this.hintText,
    this.isObscureText,
    required this.controller,
    this.validator,
  }) : super(key: key);

  String? hintText;
  bool? isObscureText;
  final TextEditingController controller;
  final String? Function(String?)? validator;

  @override
  _AppTextFormFieldState createState() => _AppTextFormFieldState();
}

class _AppTextFormFieldState extends State<AppTextFormField> {
  bool _passwordObscure = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      validator: widget.validator,
      cursorColor: AppColors.white,
      obscureText: (widget.isObscureText ?? false) ? _passwordObscure : false,
      textAlignVertical: TextAlignVertical.center,
      style: TextStyle(
        color: AppColors.white,
        fontSize: 16,
        decoration: TextDecoration.none,
      ),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.only(left: 15),
        hintText: widget.hintText ?? "",
        hintStyle: TextStyle(
          color: AppColors.white.withOpacity(0.8),
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: AppColors.white, width: 0.5),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: AppColors.white, width: 0.5),
        ),
        suffixIcon: (widget.isObscureText ?? false)
            ? IconButton(
                onPressed: () {
                  setState(() {
                    _passwordObscure = !_passwordObscure;
                  });
                },
                icon: Icon(
                  _passwordObscure
                      ? Icons.visibility_outlined
                      : Icons.visibility_off_outlined,
                  color: AppColors.white,
                  size: 20,
                ),
              )
            : null,
      ),
    );
  }
}
