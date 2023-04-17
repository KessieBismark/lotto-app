import 'package:get/get.dart';

import '../../homepage/component/model.dart';

class ResultController extends GetxController {
  String name = 'Lucky Tuesday';
  DateTime date = DateTime.now();
  List<Results> results = <Results>[];

  @override
  void onInit() {
    super.onInit();
    results = [
      Results(
          name: "name",
          date: DateTime.now(),
          winning: '23,43,55,66,54',
          machine: '87,5,77,9,32'),
      Results(
          name: "name1",
          date: DateTime.now(),
          winning: '23,43,55,66,54',
          machine: '87,5,77,9,32'),
      Results(
          name: "name2",
          date: DateTime.now(),
          winning: '23,43,55,66,54',
          machine: '87,5,77,9,32')
    ];
  }
}
