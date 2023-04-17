import 'package:cashlotto_app/services/widgets/extension.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constants.dart';
import 'widgets/winners_list.dart';
import 'component/controller.dart';

class PageWinners extends GetView<WinnersController> {
  const PageWinners({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: kPrimaryColor,
          title: "Winners".toLabel(),
        ),
        backgroundColor: const Color.fromRGBO(3, 22, 52, 20),
        body: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: size.height * 0.34,
                child: Stack(
                  children: [
                    Positioned(
                      top: 0,
                      right: 0,
                      left: 0,
                      child: Container(
                        height: 250,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/onboarding5.jpg'),
                            fit: BoxFit.fill,
                          ),
                        ),
                        child: Container(
                          padding: const EdgeInsets.only(top: 90, left: 20),
                          color: const Color(0xFF3b5999).withOpacity(0.65),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: const [
                              SizedBox(
                                height: 50,
                              ),
                              Text(
                                'Latest Lottery Winners',
                                style: TextStyle(
                                    fontSize: 23,
                                    color: Colors.white,
                                    letterSpacing: 2.0,
                                    fontFamily: 'Anton'),
                                textAlign: TextAlign.center,
                              ),
                              SizedBox(
                                height: 6,
                              ),
                              Text(
                                'Win More with CashLotto',
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                    letterSpacing: 1.0,
                                    fontFamily: 'Lato'),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Expanded(
                child: ListView.builder(
                  itemCount:  controller.winners.length,
                    itemBuilder: ((context, index) => WinnersList(
                        name: controller.winners[index].name,
                        game: controller.winners[index].game,
                        amount: controller.winners[index].amount).card)),
              )
            ],
          ),
        ),
      
    );
  }
}
