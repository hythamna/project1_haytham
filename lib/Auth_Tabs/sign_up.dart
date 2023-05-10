import 'package:app/CustomWidgets/auth_textfield.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _signuptabState();
}

class _signuptabState extends State<SignUp> {
  final EmailupCtrl = TextEditingController();

  final PassupCtrl = TextEditingController();

  final NameCtrl = TextEditingController();

  final PhoneCtrl = TextEditingController();

  final AddressCtrl = TextEditingController();

  String? value;
  final Regions = [
    'Abu Rummaneh','Bab Touma','Jaramana','Kafar Souseh','Malki','Mezzeh','Midan','Muhajreen','Rawdah','Ruken Aldin'
  ];

  DropdownMenuItem<String> buildMenuItem(String Region) =>
      DropdownMenuItem(value: Region, child: Text(Region));


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height:760,
        child: Column(
          children: [
            SizedBox(height: 40,),
            const AuthTextfield(
                hinttext: 'Name',
                ic: Icons.person,
                obsecurity: false,
                tt: TextInputType.emailAddress),
            SizedBox(height: 30,),
            const AuthTextfield(
                hinttext: 'Email Address',
                ic: Icons.mail,
                obsecurity: false,
                tt: TextInputType.emailAddress),
            SizedBox(height: 30,),
            const AuthTextfield(
                hinttext: 'Password',
                ic: Icons.lock,
                obsecurity: true,
                tt: TextInputType.name),
            SizedBox(height: 30,),
            const AuthTextfield(
                hinttext: 'Confirm Password',
                ic: Icons.lock,
                obsecurity: true,
                tt: TextInputType.name),
            SizedBox(height: 30,),
            const AuthTextfield(
                hinttext: 'Phone Number',
                ic: Icons.phone,
                obsecurity: false,
                tt: TextInputType.number),
            SizedBox(height: 30,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Container(
                height: 60,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  elevation: 8,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 18),
                    child: Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          color: Color(0xFFCE9869),
                          size: 23,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 18),
                          child: DropdownButtonHideUnderline(

                            child: DropdownButton<String>(

                              isDense: true,

                              borderRadius: BorderRadius.circular(12),
                              hint: Text(
                                'Enter Your Region',
                                style: TextStyle(
                                    color: Colors.black.withOpacity(0.3)),
                              ),
                              icon: Padding(
                                padding: EdgeInsets.only(left: 67),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 15),
                                  child: Icon(
                                    Icons.keyboard_arrow_down_rounded,
                                    color: Colors.black.withOpacity(0.4),
                                    size: 29,
                                  ),
                                ),
                              ),
                              value: value,
                              items: Regions.map(buildMenuItem).toList(),

                              onChanged: (value) => setState(() {
                                this.value = value;
                              }),
                            ),
                          ),
                        ),

                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 50,),
            ElevatedButton(
              onPressed: () {
                print('Pressed!');
              },
              child: Text(
                'Sign up',
                style: TextStyle(color: Color(0xFFCE9869), fontSize: 22),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                shadowColor: Colors.black,
                elevation: 8,
                fixedSize: Size(325, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
            )

          ],
        ),

      ),
    );
  }
}
