import 'package:get/get.dart';

import 'stake_model.dart';

class StakeController extends GetxController {
  var loadData = false.obs;
  List<StakeModel> stake = <StakeModel>[];
  List<StakeModel> stakeList = <StakeModel>[];

  @override
  void onInit() {
    super.onInit();

    stakeList = [
      StakeModel(
          id: '1',
          betName: 'NLA',
          returns: '0.00',
          date: '2023-12-03 12:03:44',
          stakeAmount: '0.20',
          potentialWin: '44',
          play: '23 45 54',
          result: '87 96 12 20',
          status: 0),
      StakeModel(
          id: '2',
          betName: 'Sunday Special',
          returns: '100.00',
          date: '2023-12-03 12:03:44',
          stakeAmount: '0.20',
          potentialWin: '44',
          play: '23 45 54',
          result: '87 96 12 20',
          status: 1)
    ];
  }
}
