import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'provider/Auth.dart';

import 'package:app/screens/get_started.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Auth(),
      builder: (context, child) => MaterialApp(
        title: 'Flutter demo',
        
        theme: ThemeData(
          primaryColor: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          fontFamily: 'Lato'
        ),
        home:  Initail(),
      ),
    );
  }
}