import 'package:cashlotto_app/homepage/component/model.dart';
import 'package:cashlotto_app/homepage/component/quotes_model.dart';
import 'package:get/get.dart';

import '../../winners/component/model.dart';
import 'card_model.dart';

class HomeController extends GetxController {
  DateTime date = DateTime.now();
  final String user = 'Edward';
  final double balance = 500;
  Duration timer = const Duration();
  DateTime countdownDate = DateTime(2024, 3, 1, 12, 0, 0);

  List<Results> results = <Results>[];
  List<Winners> winners = <Winners>[];
  List<CardModel> card = <CardModel>[];
  List<QuotesModel> quotes = <QuotesModel>[];
  //var duration = DateTime.parse('2023-02-28 12:30:21:123').obs;

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
    winners = [
      Winners(name: 'E.K', game: 'Lucky Tuesday', amount: '500'),
      Winners(name: 'J.A', game: 'Cash Tuesday', amount: '250'),
      Winners(name: 'E.F', game: 'NLA VAG Wednesday', amount: '320'),
      Winners(name: 'K.A', game: 'Sunday Special', amount: '110'),
      Winners(name: 'K.M', game: 'Cash Monday', amount: '1,120'),
      Winners(name: 'Y.A', game: 'Monday Special', amount: '340')
    ];
    quotes = [
      QuotesModel(
          quoter: 'Vera Nazarian',
          quote:
              '“Luck is not as random as you think. Before that lottery ticket won the jackpot, someone had to buy it.”',
          imageLink: 'assets/images/splash1.png'),
      QuotesModel(
          quoter: 'J.G. Ballard',
          quote: '“You can never have too much money.”',
          imageLink: 'assets/images/splash1.png')
    ];

    card = [
      CardModel(
          title: "How To's",
          imageLink: 'assets/images/splash2.png',
          description:
              'We\'ve Got You Covered - Be at your convenience and Play Ghana NLA 590 Lottery Games Online',
          cardDetail: CardDetailModel(
              title: 'Recent Lottery Posts',
              imageLink: 'assets/images/onboarding5.jpg',
              description:
                  'Be motivated & learn more about lotto.Win More on with CashLotto',
              paragraph:
                  'Sit at the comfort of your home and play all NLA Games. We act as agent placing all your stakes on your behalf',
              paragraph2:
                  'Winning has become that Easy with CashLotto in these simple steps:',
              list: [
                '1. Download CashLotto app on PlayStore or visit www.thecashlotto.com.',
                '2. Get started by signing up with your details.',
                '3. Make your first Deposit using Mobile Money (i.e. MTN MOMO, Vodafone Cash, AirtelTigo',
                '4. Select Play',
                '5. On the Play page, select the game you want to play',
                '6. Select the type of game you want to play.',
                '7. Pick your Numbers',
                '8. Enter stake amount',
                '9. Click on Play Game',
                '10. Wait for the Draw',
                '11. Hurray!!',
              ]))
    ];
  }

  countDown(seconds) {
    timer = Duration(seconds: seconds);
    //  duration.value = DateTime.parse(timer.inSeconds.toString());
  }
}
