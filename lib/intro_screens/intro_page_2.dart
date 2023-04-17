import 'package:flutter/material.dart';

class IntroPage2 extends StatelessWidget {
  const IntroPage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              color: Colors.deepPurple,
              child: Image.asset(
                'assets/images/onboarding2.png',
                height: size.height * 1,
              ),
            ),
            SizedBox(
              height: size.height * 10,
            ),
          ],
        ),
      ),
    ));
  }
}
