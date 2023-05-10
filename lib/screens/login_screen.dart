import 'package:app/Auth_Tabs/sign_in.dart';
import 'package:app/Auth_Tabs/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:app/provider/Auth.dart';
import 'package:app/CustomWidgets/auth_widget.dart';
// import 'package:app/CustomWidgets/auth_textfield.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreen();
}

class _LoginScreen extends State<LoginScreen> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    final auth = Provider.of<Auth>(context);
    final _formKey = GlobalKey<FormState>();
    // final width = MediaQuery.of(context).size.width;

    TabController TabCtrl = TabController(length: 2, vsync: this);

    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Stack(
            children: [
              Image.asset('assets/Fashion.jpg'),
              Positioned(
                bottom: 400,
                child: Container(
                  height: 400,
                  width: 411.4,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Color(0xFFE8A874).withOpacity(0.4),Color(0xFF986842).withOpacity(0.4)
                    ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
                  ),
                ),
              ),
              Positioned(
                top: 40,
                child: CustomPaint(
                  painter: RPSCustomPainter(),
                  size: Size(420, 683.4),
                ),
              ),
              SingleChildScrollView(
                child: Column(children: [
                  SizedBox(
                    height: 260,
                  ),
                  Container(
                    child: TabBar(
                      unselectedLabelColor: Colors.white.withOpacity(0.5),
                      indicatorColor: Colors.white,
                      labelColor: Colors.white,
                      indicator: UnderlineTabIndicator(
                          borderSide: BorderSide(width: 3, color: Colors.white),
                          borderRadius: BorderRadius.circular(25),
                          insets: EdgeInsets.symmetric(horizontal: 85.0)),
                      labelStyle: TextStyle(fontSize: 21),
                      controller: TabCtrl,
                      tabs: [
                        Tab(
                          text: 'Sign in',
                          height: 52,
                        ),
                        Tab(
                          text: 'Sign up',
                          height: 52,
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: double.maxFinite,
                    height: 369,
                    child: TabBarView(controller: TabCtrl, children: [
                      SignIn(),
                      SignUp(),
                    ]),
                  ),
                ]),
              )
            ],
          ),
        ],
      ),
    );
  }
}













      // body: Center(
      //   child: TextFormField(
      //     controller: auth.controller,
      //     validator: (val){
      //       var exam="michael@gmail.com";
            
      //       print(EmailValidator.validate(exam));

      //     },
      //     decoration:const InputDecoration(
      //       labelText: 'Email',

      //       // errorText: auth.errortext,
      //     ),

      //   ),
      // ),
    
// appBar: AppBar(),
// body: Center(
//   child: Container(
//     width: 320,
//     child: Column(
//         mainAxisAlignment: MainAxisAlignment.spaceAround,
//         children: [
//           TextField(
//             controller: auth.loginemail,
//             decoration: const InputDecoration(
//                 labelText: 'Email',
//                 border: OutlineInputBorder(
//                     borderRadius: BorderRadius.all(Radius.circular(25)))),
//           ),
//           TextFormField(
//             controller: auth.loginpassword,
//             validator: (value){
//               if(value!.isEmpty  || !RegExp(r'^[a-z A-Z] + $').hasMatch(value)){
//                 return "incorrect";
//               }
//             },
//             decoration: const InputDecoration(
//                 labelText: 'password',
//                 // err
//                 // errorText: 'hi',
//                 // errorStyle: TextStyle(color: Colors.black),
//                 border: OutlineInputBorder(
//                     borderRadius: BorderRadius.all(Radius.circular(25)))),
//           ),
//           MaterialButton(
//             onPressed: () {
//               // auth.login(auth.loginemail.text, auth.loginpassword.text);
//             },
//             child:Text('Login'),
//           )
//         ]),
//   ),
// ),
