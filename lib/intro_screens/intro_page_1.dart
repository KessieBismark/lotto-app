import 'package:flutter/material.dart';

class IntroPage1 extends StatelessWidget {
  const IntroPage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        color: Colors.deepPurple,
        child: Image.asset(
          'assets/images/splash1.png',
          height: size.height * 1,
        ),
      ),
    );
  }
}
