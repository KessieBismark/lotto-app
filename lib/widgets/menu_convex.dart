import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Notifications_page.dart';
import 'about_us.dart';
import 'blog.dart';
import 'contact_us.dart';
import 'live_chat.dart';
import 'proforecasters.dart';
import 'settings.dart';
import 'terms_and_conditions.dart';
import 'winners.dart';

class MenuConvex extends StatelessWidget {
  const MenuConvex({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.grey[100],
        body: Center(
          child: SafeArea(
            child: Container(
              // padding: EdgeInsets.all(20),
              decoration: const BoxDecoration(),
              child: ListView(
                children: [
                  SizedBox(
                    height: size.height * 0.2,
                    child: Image.asset('assets/images/onboarding2.png'),
                  ),
                  const LiveChat(),
                  const Divider(),
                  const WinnersPage(),
                  const ContactUs(),
                  const NotificationsPage(),
                  const ProForecastersPage(),
                 const BlogPage(),
                  const FeedBackPage(),
                  const TermsAndConditions(),
                //  const Settings(),
                  const Divider(),
                  const SizedBox(
                    height: 30,
                  ),
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () => Get.toNamed("/NextScreen"),
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          margin: const EdgeInsets.only(top: 20),
                          height: size.height * 0.1,
                          width: size.width * 0.24,
                          child: Text(
                            'LOGOUT',
                            style: TextStyle(
                                color: Colors.amber[800],
                                fontFamily: 'Lato',
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
