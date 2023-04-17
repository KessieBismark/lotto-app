import 'package:get/get.dart';

import '../../play_game/component/controller.dart';

final con = Get.find<PlayGameController>();

class Calculations {
  static double directWinning(
      {required int multipler,
      required double amount,
      int? lines,
      required bool isMinMax}) {
    double wins = 0.0;
    if (!isMinMax) {
      wins = direct(amount, multipler);
    } else {
      wins = perm(amount, multipler, lines!);
    }
    print("win: $wins");
    return wins;
  }

  static double direct(double amount, int multipler) {
    return (amount / 0.2) * multipler;
  }

  static double perm(double amount, int multipler, int lines) {
    return lines * (amount / 0.2) * multipler;
  }

  static int factorial(int num) {
    int fact = 1;
    for (int i = 1; i <= num; i++) {
      fact *= i;
    }
    return fact;
  }

  static int nCr({required int n, required int r}) {
    if (n == 0 || r == 0 || n < r) return 0;
    print(factorial(n) ~/ (factorial(r) * factorial(n - r)));
    return factorial(n) ~/ (factorial(r) * factorial(n - r));
  }

  static String meg(
    final int min,
    final int max,
    final List<dynamic> selected,
  ) {
    String message = '';
    if (selected.isEmpty) {
      message = "Select your numbers";
    } else if (selected.length < min) {
      message = "You can choose ${max - selected.length} more numbers";
    } else if (selected.length > min && selected.length < max) {
      message =
          "Completed. You can choose ${max - selected.length} more numbers";
    } else if (selected.length == max) {
      message = "Completed. You cannot choose any number";
    }
    if (min <= max) {
      con.selectComplete.value = true;
    } else {
      con.selectComplete.value = false;
    }
    return message;
  }
}
