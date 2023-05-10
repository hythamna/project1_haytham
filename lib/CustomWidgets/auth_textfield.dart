import 'package:app/provider/Validator.dart';
import 'package:flutter/material.dart';

//import 'package:app/validation.dart';
import 'package:provider/provider.dart';

class AuthTextfield extends StatefulWidget {
  final String hinttext;
  final IconData ic;
  final bool obsecurity;
  final TextInputType tt;

  const AuthTextfield({
    required this.hinttext,
    required this.ic,
    required this.obsecurity,
    required this.tt,
  });

  @override
  _TextfieldState createState() => _TextfieldState();
}

class _TextfieldState extends State<AuthTextfield> {
  bool _obscureText = true;

  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return !widget.obsecurity
        ? ChangeNotifierProvider(
            create: (_) => Validator(),
            child: Consumer<Validator>(builder: (_, Validator, __) {
              return Padding(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Container(
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    elevation: 8,
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 18),
                          child: TextFormField(
                            keyboardType: widget.tt,
                            cursorColor: Color(0xFFCE9869),
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                icon: Icon(
                                  widget.ic,
                                  size: 23,
                                  color: Color(0xFFCE9869),
                                ),
                                labelText: '${widget.hinttext}',
                                labelStyle: TextStyle(
                                    color: Colors.black.withOpacity(0.3))),
                            onChanged: (value) {
                              Validator.email = value;
                            },
                          ),
                        ),
                        if (Validator.email != null && !Validator.isValidEmail)
                          Text(
                            'Please enter a valid email address',
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: 12,
                            ),
                          ),
                      ],
                    ),
                  ),
                ),
              );
            }),
          )
        : ChangeNotifierProvider(
            create: (_) => Validator(),
            child: Consumer<Validator>(builder: (_, Validator, __) {
              return Padding(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Container(
                  child: Column(
                    children: [
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        elevation: 8,
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 18),
                          child: TextFormField(
                            keyboardType: widget.tt,
                            obscureText: _obscureText,
                            cursorColor: Color(0xFFCE9869),
                            decoration: InputDecoration(
                                suffixIcon: IconButton(
                                  onPressed: () {
                                    _toggle();
                                  },
                                  icon: Icon(
                                    Icons.remove_red_eye_rounded,
                                    color: Color(0x00000000).withOpacity(0.3),
                                    size: 23,
                                  ),
                                ),
                                border: InputBorder.none,
                                icon: Icon(
                                  widget.ic,
                                  size: 23,
                                  color: Color(0xFFCE9869),
                                ),
                                labelText: '${widget.hinttext}',
                                labelStyle: TextStyle(
                                    color: Colors.black.withOpacity(0.3))),
                            onChanged: (value) {
                              Validator.password = value;
                            },
                          ),
                        ),
                      ),
                      if (Validator.password != null &&
                          !Validator.isValidPassword)
                        const Text(
                          'Password must be 8 characters at least',
                          style: TextStyle(
                              color: Colors.red,
                              fontSize: 16,
                              fontWeight: FontWeight.w900),
                        ),
                    ],
                  ),
                ),
              );
            }),
          );
  }
}
