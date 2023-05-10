import 'dart:convert';

import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Auth with ChangeNotifier {
  bool _isAuthenticated = false;
  final loginemail = TextEditingController();
  final loginpassword = TextEditingController();
  final controller = TextEditingController();

  bool get isAuthenticated => _isAuthenticated;





  // String? get errortext {
  //   final text = controller.value.text;
  //   if (text.isEmpty) {
  //     return "Cant be empty";
  //   }
  //   if (text.length < 4) {
  //     return "dvsd";
  //   }
  //   return null;
  // }









  // Future login (String email , String password)async{
  //   var response = await http.post(
  //     Uri.parse('http://192.168.92.125:8000/api/login'),
  //     body: <String ,String>{'email' : email , 'password' : password }
  //   );
  //   if(response.statusCode == 200){
  //     var js = jsonDecode(response.body);
  //     var token = js['data']['Token'];
  //     _isAuthenticated=true;
  //     print(token);
  //   }
  //   else{
  //     print('incorrect email or password');
  //   }
  // }

}
