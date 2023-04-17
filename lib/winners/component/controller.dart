import 'package:get/get.dart';

import 'model.dart';

class WinnersController extends GetxController{

  List<Winners> winners = <Winners>[];

  @override
  void onInit(){
    super.onInit();
    winners = [
      Winners(name: 'E.K', game: 'Lucky Tuesday', amount: '500'),
      Winners(name: 'J.A', game: 'Cash Tuesday', amount: '250'),
      Winners(name: 'E.F', game: 'NLA VAG Wednesday', amount: '320'),
      Winners(name: 'K.A', game: 'Sunday Special', amount: '110'),
      Winners(name: 'K.M', game: 'Cash Monday', amount: '1,120'),
      Winners(name: 'Y.A', game: 'Monday Special', amount: '340')
    ];

  }
  
}