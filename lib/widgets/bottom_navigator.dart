import 'package:cashlotto_app/constants.dart';
import 'package:cashlotto_app/homepage/home.dart';

import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';

import 'menu_convex.dart';
import 'results_convex.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentindex = 0;

  List pages = [
    const HomePage(),
   // PlayGameConvex(),
    const ResultConvex(),
   // const AccountConvex(),
    const MenuConvex(),
    // CastFilter(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: pages[_currentindex],
        bottomNavigationBar: SafeArea(
          child: ConvexAppBar(
              color: Colors.white,
              style: TabStyle.reactCircle,
              backgroundColor: kPrimaryColor,
              items: const [
                TabItem(icon: Icons.home, title: 'Home'),
                TabItem(icon: Icons.map, title: 'Play'),
                TabItem(icon: Icons.question_answer, title: 'Results'),
                TabItem(
                    icon: Icons.account_balance_wallet_rounded,
                    title: 'Account'),
                TabItem(icon: Icons.menu_rounded, title: 'Menu'),
              ],
              initialActiveIndex: 0, //optional, default as 0
              onTap: (int i) {
                setState(() {
                  _currentindex = i;
                });
              }),
        ));
  }
}
