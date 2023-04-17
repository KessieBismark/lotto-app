import 'package:flutter/material.dart';

import '../widgets/forecasters_list.dart';
import '../widgets/search_forecaster.dart';



class PageProForecasters extends StatelessWidget {
  const PageProForecasters({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 225, 234, 241),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
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
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RichText(
                              text: TextSpan(
                                text: 'Subscribe to a ',
                                style: TextStyle(
                                    fontSize: 23,
                                    color: Colors.yellow[700],
                                    letterSpacing: 1.5,
                                    fontFamily: 'Lato'),
                                children: [
                                  TextSpan(
                                    text: 'ProForecaster!',
                                    style: TextStyle(
                                        fontSize: 23,
                                        color: Colors.yellow[700],
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Lato'),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 8),
                            Container(
                              padding: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  color: const Color.fromRGBO(240, 120, 24, 50),
                                  borderRadius: BorderRadius.circular(6)),
                              margin: const EdgeInsets.only(right: 18),
                              child: const Text(
                                'Kindly Note that no forecaster is affiliated to CashLotto. You take the sole responsibility for subscribing to any of the forecasters. CashLotto will not be responsible for your wins and losses resulted from your decision to subscribe to any forecaster.',
                                style: TextStyle(
                                    letterSpacing: 1,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontFamily: 'Lato'),
                                textAlign: TextAlign.center,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  // Positioned(
                  //   top: 220,
                  //   child: Container(
                  //     height: 50,
                  //     width: MediaQuery.of(context).size.width - 40,
                  //     margin: const EdgeInsets.symmetric(horizontal: 20),
                  //     decoration: BoxDecoration(
                  //       color: Colors.white,
                  //       borderRadius: BorderRadius.circular(15),
                  //       boxShadow: [
                  //         BoxShadow(
                  //           color: Colors.black.withOpacity(0.3),
                  //           blurRadius: 15,
                  //           spreadRadius: 5,
                  //         ),
                  //       ],
                  //     ),
                  //     child: SearchForecaster(),
                  //   ),
                  // ),
                ],
              ),
            ),
            SearchForecaster(),
            SizedBox(
              height: 20,
            ),
            ForecastersList(),
            ForecastersList(),
            ForecastersList(),
            ForecastersList(),
            ForecastersList(),
            ForecastersList(),
            ForecastersList(),
            ForecastersList(),
          ],
        ),
      ),
    );
  }
}
