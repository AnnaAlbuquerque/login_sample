import 'package:email_validator/email_validator.dart';

class FormValidators {
  String? validateEmail(String? value) {
    if (value == null || value == "") {
      return "Invalid email";
    }

    final bool isvalid = EmailValidator.validate(value);
    if (isvalid) {
      return null;
    }
    return "Invalid email";
  }

  String? validatePassword(String? value, String? value2) {
    if (value != value2) {
      return "Password are different";
    }
    return null;
  }
}
