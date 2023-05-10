import 'package:app/provider/Auth.dart';
import 'package:app/screens/home_screen.dart';
import 'package:app/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';



class AuthScreen extends StatelessWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final auth = Provider.of<Auth>(context);
    return auth.isAuthenticated ? HomeScreen() : LoginScreen();
  }
}