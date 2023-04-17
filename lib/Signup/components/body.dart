import 'package:flutter/material.dart';

import '../../Login/components/already_have_account_acheck.dart';
import '../../Login/components/email_fied.dart';
import '../../Login/components/repeat_password_field.dart';
import '../../Login/components/rounded_input_field.dart';
import '../../Login/components/rounded_password_field.dart';
import '../../Login/login_screen.dart';
import '../../services/widgets/rounded_button.dart';
import 'background.dart';
import 'or_divider.dart';
import 'social_icon.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Create Account',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            RoundedInputField(
                hintText: 'Full Name',
                icon: Icons.person,
                onChanged: (value) {}),
            EmailField(hintText: 'Email', onChanged: (value) {}),
            RoundedInputField(
                hintText: 'Phone', icon: Icons.phone, onChanged: (value) {}),
            RoundedPasswordField(onChanged: (value) {}),
            RepeatPasswordField(onChanged: (value) {}),
            RoundedButton(
                text: 'SIGN UP',
                press: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const LoginScreen();
                  }));
                }),
            AlreadyHaveAccountCheck(
                login: false,
                press: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const LoginScreen();
                  }));
                }),
            const OrDivider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SocialIcon(
                  iconSrc: 'assets/icons/facebook.svg',
                  press: () {},
                ),
                SocialIcon(
                  iconSrc: 'assets/icons/twitter.svg',
                  press: () {},
                ),
                SocialIcon(
                  iconSrc: 'assets/icons/google-plus.svg',
                  press: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
