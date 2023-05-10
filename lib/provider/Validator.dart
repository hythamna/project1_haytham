import 'package:flutter/material.dart';

class Validator extends ChangeNotifier {
  String? _email;
  String? _password;
  bool _isValidEmail = false;

  RegExp _emailRegExp = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');

  String? get email => _email;
  String? get password => _password;

  set email(String? value) {
    _email = value;
    _isValidEmail = _emailRegExp.hasMatch(_email ?? '');
    notifyListeners();
  }

  set password(String? value) {
    _password = value;
    notifyListeners();
  }

  bool get isValidEmail => _isValidEmail;
  bool get isValidPassword{
    return password!=null && password.toString().length >=8;

  }

  
}
