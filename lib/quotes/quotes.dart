// ignore_for_file: prefer_const_constructors

import 'package:cashlotto_app/constants.dart';
import 'package:cashlotto_app/services/widgets/extension.dart';
import 'package:flutter/material.dart';
import '../homepage/component/quotes_model.dart';
import '../homepage/widgets/quote.dart';

class QuotesList extends StatelessWidget {
  final List<QuotesModel> quotes;
  const QuotesList({super.key, required this.quotes});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kPrimaryColor,
        title: "Lottery Quotes".toLabel(),
      ),
      backgroundColor: Color.fromARGB(255, 225, 234, 241),
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
                              'Recent Lottery Posts',
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
                              'Be motivated & learn more about lotto',
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                  letterSpacing: 1.0,
                                  fontFamily: 'Lato'),
                            ),
                            Text(
                              'Win More on with CashLotto',
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
            SizedBox(
              height: 30,
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: quotes.length,
                  itemBuilder: (context, index) {
                    return Card4DetailCard1(
                      quote: quotes[index].quote,
                      quoter: quotes[index].quoter,
                      imageLink: quotes[index].imageLink,
                    ).padding9.padding9;
                  }),
            )
          ],
        ),
      ),
    );
  }
}
