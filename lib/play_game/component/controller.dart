import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../services/utils/calculation.dart';
import 'model.dart';

class PlayGameController extends GetxController {
  RxList<dynamic> selectedList = [].obs;
  Games selectedGame =
      Games(id: 0, name: 'Select Game', date: '2023-03-08 12:45:00');

  GameType? selectedGameType;
  final stakeAmount = TextEditingController();
  // final String gameType = 'CASH TUESDAY';
  var price = 0.20.obs;
  var isNLA = false.obs;
  var isOther = false.obs;
  var isGame = false.obs;
  var lines = 0.obs;
  var multipler = 0.obs;
  var r = 0.obs;
  var potentialWin = 0.0.obs;
  var message = "Click to play:".obs;
  var selectComplete = false.obs;

  List<Games> nlaList = [
    Games(id: 1, name: 'Sunday Special', date: '2023-03-08 12:45:00'),
    Games(id: 2, name: 'Monday Special', date: '2023-03-08 12:45:00'),
    Games(id: 3, name: 'Lucky Tuesday', date: '2023-03-08 12:45:00'),
    Games(id: 4, name: 'Mid Week', date: '2023-03-08 12:45:00'),
    Games(id: 5, name: 'Fortune Thursday', date: '2023-03-08 12:45:00'),
    Games(id: 6, name: 'Friday Bonanza', date: '2023-03-08 12:45:00'),
    Games(id: 7, name: 'National Weekly Lotto', date: '2023-03-08 12:45:00'),
  ];

  List<Games> others = [
    Games(id: 1, name: 'NLA Monday', date: '2023-03-08 12:45:00'),
    Games(id: 2, name: 'Cash Monday ', date: '2023-03-08 12:45:00'),
    Games(id: 3, name: 'NLA VAG Tuesday', date: '2023-03-08 12:45:00'),
    Games(id: 4, name: 'Cash Tuesday', date: '2023-03-08 12:45:00'),
    Games(id: 5, name: 'NLA VAG Wednesday', date: '2023-03-08 12:45:00'),
    Games(id: 6, name: 'Cash Wednesday', date: '2023-03-08 12:45:00'),
    Games(id: 7, name: 'NLA VAG Thursday', date: '2023-03-08 12:45:00'),
    Games(id: 8, name: 'Cash Thursday', date: '2023-03-08 12:45:00'),
    Games(id: 10, name: 'Cash Thursday', date: '2023-03-08 12:45:00'),
    Games(id: 11, name: 'NLA VAG Friday', date: '2023-03-08 12:45:00'),
    Games(id: 12, name: 'Cash Friday', date: '2023-03-08 12:45:00'),
    Games(id: 13, name: 'NLA VAG Saturday', date: '2023-03-08 12:45:00'),
    Games(id: 14, name: 'Cash Saturday', date: '2023-03-08 12:45:00'),
  ];
  List<GameType> gameType = [
    GameType(
        id: 1,
        name: 'Direct 2',
        isMinMax: false,
        minPlayCount: 2,
        r: 2,
        maxPlayCount: 2,
        multipler: 44),
    GameType(
        id: 1,
        name: 'Direct 3',
        isMinMax: false,
        r: 3,
        minPlayCount: 3,
        maxPlayCount: 3,
        multipler: 360),
    GameType(
        id: 1,
        name: 'Perm 2',
        isMinMax: true,
        minPlayCount: 2,
        r: 2,
        maxPlayCount: 17,
        multipler: 44),
    GameType(
        id: 1,
        name: 'Perm 3',
        isMinMax: true,
        minPlayCount: 3,
        r: 3,
        maxPlayCount: 20,
        multipler: 360),
    GameType(
        id: 1,
        name: 'Perm 4',
        isMinMax: true,
        r: 4,
        minPlayCount: 4,
        maxPlayCount: 25,
        multipler: 900),
    GameType(
        id: 1,
        name: 'Perm 5',
        isMinMax: true,
        r: 5,
        minPlayCount: 5,
        maxPlayCount: 30,
        multipler: 7600),
    GameType(
        id: 1,
        name: 'Banker',
        isMinMax: true,
        minPlayCount: 1,
        maxPlayCount: 1,
        multipler: 176),
  ];

  playChecker() {}

  calculateWinning() {
    isGame.value = true;
    if (stakeAmount.text.isNotEmpty) {
      if (selectedGameType!.isMinMax &&
          selectedGameType!.r.toString().isNotEmpty) {
        r.value = selectedGameType!.r!;
        multipler.value = selectedGameType!.multipler;
        lines.value =
            Calculations.nCr(n: selectedList.length, r: selectedGameType!.r!);
        potentialWin.value = Calculations.directWinning(
            multipler: selectedGameType!.multipler,
            lines: lines.value,
            isMinMax: selectedGameType!.isMinMax,
            amount: double.parse(stakeAmount.text));
      } else {
        multipler.value = selectedGameType!.multipler;
        lines.value =
            Calculations.nCr(n: selectedList.length, r: selectedGameType!.r!);
        potentialWin.value = Calculations.directWinning(
            multipler: selectedGameType!.multipler,
            isMinMax: selectedGameType!.isMinMax,
            amount: double.parse(stakeAmount.text));
      }
    }
    message.value = Calculations.meg(selectedGameType!.minPlayCount,
        selectedGameType!.maxPlayCount, selectedList.value);
    isGame.value = false;
  }
}
