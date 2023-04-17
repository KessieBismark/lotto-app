import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Signup/signup.dart';
import '../../homepage/home.dart';
import '../../services/widgets/rounded_button.dart';
import 'already_have_account_acheck.dart';
import 'background.dart';
import 'rounded_input_field.dart';
import 'rounded_password_field.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
    required Column child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Welcome Back',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            Image.asset(
              'assets/images/splash1.png',
              height: size.height * 0.35,
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            RoundedInputField(
                hintText: 'Email or Number',
                icon: Icons.phone,
                onChanged: (value) {}),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            AlreadyHaveAccountCheck(
              press: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const SignUpScreen();
                }));
              },
            ),
            RoundedButton(
                text: 'Login',
                press: () {
                  Get.toNamed('/dash');
                })
          ],
        ),
      ),
    );
  }
}
