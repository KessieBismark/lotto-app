// ignore_for_file: unused_local_variable
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'services/config/binding.dart';
import 'services/config/routes.dart';
import 'services/utils/themes.dart';

void main() async {
  await GetStorage.init();
  ThemeController themes = Get.put(ThemeController());
  AllBinding allBinding = Get.put(AllBinding());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cash Lotto',
      getPages: Routes.routes,
      initialRoute: '/onboarding',
      initialBinding: AllBinding(),
      defaultTransition: Transition.fadeIn,
    );
  }
}
