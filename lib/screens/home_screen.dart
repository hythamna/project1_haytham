import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:app/CustomWidgets/auth_textfield.dart';
import 'package:provider/provider.dart';
import 'package:app/provider/Validator.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => Validator(),
      child: Scaffold(
        body: Consumer<Validator>(
          builder: (_, Validator, __) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  // controller: ,
                  decoration: const InputDecoration(
                    hintText: 'Enter your email',
                  ),
                  onChanged: (value) {
                    Validator.email = value;
                  },
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
