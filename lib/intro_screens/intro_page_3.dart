import 'package:flutter/material.dart';

class IntroPage3 extends StatelessWidget {
  const IntroPage3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        color: Colors.deepPurple,
        child: Image.asset(
          'assets/images/lotto_machine1.png',
          height: size.height * 1,
        ),
      ),
    );
  }
}
