import 'package:cashlotto_app/account/component/controller.dart';
import 'package:cashlotto_app/dashboard/component/controller.dart';
import 'package:cashlotto_app/homepage/component/controller.dart';
import 'package:cashlotto_app/post/component/controller.dart';
import 'package:cashlotto_app/results/component/controller.dart';
import 'package:get/get.dart';

import '../../play_game/component/controller.dart';
import '../../settings/component/controller.dart';
import '../../winners/component/controller.dart';

class AllBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DashController());
    Get.lazyPut(() => HomeController());
    Get.lazyPut(() => ResultController());
    Get.lazyPut(() => BlogsController());
    Get.lazyPut(() => WinnersController());
    Get.lazyPut(() => PlayGameController());
    Get.lazyPut(() => AccountController());
    Get.lazyPut(() => SettingController());
  }
}
