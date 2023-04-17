import 'package:cashlotto_app/dashboard/dash.dart';
import 'package:cashlotto_app/homepage/home.dart';
import 'package:cashlotto_app/results/result.dart';
import 'package:cashlotto_app/services/config/binding.dart';
import 'package:get/get.dart';

import '../../intro_screens/onboarding_screen.dart';

class Routes {
  static final routes = [
    GetPage(name: '/onboarding', page: () => const OnBoardingScreen()),
    GetPage(
      name: '/home',
      page: () => const HomePage(),
      binding: AllBinding(),
    ),
    GetPage(
      name: '/result',
      page: () => const Result(),
      binding: AllBinding(),
    ),
    GetPage(
      name: '/dash',
      page: () => const Dash(),
      binding: AllBinding(),
    ),
  ];
}
