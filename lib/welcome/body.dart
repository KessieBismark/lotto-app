import 'package:cashlotto_app/constants.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../Login/components/background.dart';
import '../Login/login_screen.dart';
import '../Signup/signup.dart';
import '../services/widgets/rounded_button.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context)
        .size; // this size privide us total height and width of our screen
    return Background(
      child: SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'WELCOME TO CASH LOTTO',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              SizedBox(height: size.height * 0.03),
              Image.asset(
                'assets/images/splash2.png',
                height: size.height * 0.4,
              ),
              SizedBox(height: size.height * 0.05),
              RoundedButton(
                text: 'LOGIN',
                press: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return const LoginScreen();
                  }));
                },
              ),
              RoundedButton(
                text: 'SIGN UP',
                color: kPrimaryLightColor,
                textColor: Colors.black,
                press: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const SignUpScreen();
                  }));
                },
              ),
            ]),
      ),
    );
  }
}
