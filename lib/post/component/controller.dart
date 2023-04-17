import 'package:get/get.dart';

import '../../homepage/component/card_model.dart';

class BlogsController extends GetxController {
  List<CardModel> card = <CardModel>[];

  @override
  void onInit() {
    super.onInit();
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
              ])),
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
              ])),
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
              ])),
    ];
  }
}
