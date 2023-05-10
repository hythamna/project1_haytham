import 'package:app/screens/auth_screen.dart';
import 'package:flutter/material.dart';
import 'package:app/CustomWidgets/initial_widget.dart';

class Initail extends StatelessWidget {
  const Initail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset('assets/Fashion.jpg'),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                Color(0xFFD19869).withOpacity(0.2),
                Color(0xFF9C6944).withOpacity(0.2)
              ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
            ),
          ),
          Positioned(
            bottom: 1,
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                    colors: [Color(0xFFD19869), Color(0xFF9C6944)],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter),
              ),
              width: 411,
              height: 130,
            ),
          ),
          CustomPaint(
            painter: RPSCustomPainter(),
            size: Size(420, 683.4),
          ),
          const Positioned(
            top: 400,
            left: 120,
            child: Center(
              child: Text('Look Good \n Feel Good',
                  style: TextStyle(
                      letterSpacing: 1.5,
                      color: Color(0xFFBE895A),
                      fontSize: 30,
                      fontFamily: 'PlayfairDisplay',
                      fontWeight: FontWeight.bold)),
            ),
          ),
          const Positioned(
            top: 500,
            left: 65,
            child: Center(
              child: Text(
                  'Discover the latest trends in fashion \n      and explore your personality',
                  style: TextStyle(
                    color: Color(0xFF939393),
                    fontSize: 18,
                    fontFamily: 'Lato',
                  )),
            ),
          ),
          Positioned(
            top: 630,
            left: 140,
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AuthScreen()),
                );
              },
              child: const Center(
                child: Text('Get Started',
                    style: TextStyle(
                      color: Color(0xFFFFFFFF),
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'PlayfairDisplay',
                    )),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
