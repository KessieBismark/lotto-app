import 'package:cashlotto_app/dashboard/component/controller.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../account/account.dart';
import '../homepage/home.dart';
import '../play_game/play_game.dart';
import '../results/result.dart';
import '../settings/settings.dart';

class Dash extends StatelessWidget {
  const Dash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashController>(
      builder: (controller) {
        return Scaffold(
          body: SafeArea(
            child: IndexedStack(
              index: controller.tabIndex,
              children: const [
                HomePage(),
                PlayGame(),
                Accounts(),
                Result(),
                PageSettings()
              ],
            ),
          ),
          bottomNavigationBar: ConvexAppBar(
            style: TabStyle.reactCircle,
            backgroundColor: Colors.purple[700], color: Colors.white,
            items: const [
              TabItem(icon: Icons.home, title: 'Home'),
              TabItem(icon: Icons.map, title: 'Play'),
              TabItem(icon: Icons.account_circle, title: 'Account'),
              TabItem(icon: Icons.question_answer, title: 'Results'),
              TabItem(icon: Icons.settings, title: 'Settings'),
            ],

            initialActiveIndex: 0, //optional, default as 0
            onTap: controller.changeTabIndex,
          ),
        );
      },
    );
  }
}
