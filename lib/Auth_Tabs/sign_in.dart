import 'package:flutter/material.dart';
import 'package:app/CustomWidgets/auth_textfield.dart';
import 'package:app/provider/Validator.dart';
import 'package:provider/provider.dart';


class SignIn extends StatefulWidget {
  SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {


  @override

  Widget build(BuildContext context) {
    // final valid = Provider.of<Validator>(context);
    return Column(
        children: [
          SizedBox(height: 40,),
          const AuthTextfield(
            hinttext: 'Email',
            ic: Icons.person,
            obsecurity: false,
            tt: TextInputType.emailAddress,
          ),
          SizedBox(height: 30),
          const AuthTextfield(
            hinttext: 'Password',
            ic: Icons.lock,
            obsecurity: true,
            tt: TextInputType.name,
          ),
          SizedBox(height: 50),
          ElevatedButton(
            onPressed: () {
              
            },
            child:const Text(
              'Sign in',
              style: TextStyle(color: Color(0xFFCE9869), fontSize: 21),
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              elevation: 8,
              fixedSize: Size(325, 50),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
            ),
          )
        ],
      );
  }
}
