import 'package:cashlotto_app/services/widgets/extension.dart';
import 'package:flutter/material.dart';

import '../constants.dart';
import '../winners/widgets/winners_list.dart';



class PageWinners extends StatelessWidget {
  const PageWinners({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
        elevation: 0,
        backgroundColor: kPrimaryColor,
        title: "Winners".toLabel(),
      ),
        backgroundColor: const Color.fromRGBO(3, 22, 52, 20),
        body: SingleChildScrollView(
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
              const WinnersList(
                  name: 'E.K', game: 'Lucky Tuesday', amount: '500'),
              Divider(
                color: Colors.grey[600],
              ),
              const WinnersList(
                  name: 'J.A', game: 'Cash Tuesday', amount: '250'),
              Divider(
                color: Colors.grey[600],
              ),
              const WinnersList(
                  name: 'E.F', game: 'NLA VAG Wednesday', amount: '320'),
              Divider(
                color: Colors.grey[600],
              ),
              const WinnersList(
                  name: 'K.A', game: 'Sunday Special', amount: '110'),
              Divider(
                color: Colors.grey[600],
              ),
              const WinnersList(
                  name: 'K.M', game: 'Cash Monday', amount: '1,120'),
              Divider(
                color: Colors.grey[600],
              ),
              const WinnersList(
                  name: 'Y.A', game: 'Monday Special', amount: '340'),
              Divider(
                color: Colors.grey[600],
              ),
              const WinnersList(
                  name: 'M.A', game: 'Cash Monday', amount: '720'),
              Divider(
                color: Colors.grey[600],
              ),
              const WinnersList(
                  name: 'J.M', game: 'NLA VAG Thursday', amount: '125'),
              Divider(
                color: Colors.grey[600],
              ),
              const WinnersList(
                  name: 'C.M', game: 'Lucky Tuesday', amount: '530'),
              Divider(
                color: Colors.grey[600],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
