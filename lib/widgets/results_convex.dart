import 'package:cashlotto_app/constants.dart';

import 'package:flutter/material.dart';

import '../results/result.dart';


class ResultConvex extends StatelessWidget {
  const ResultConvex({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Center(
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(color: Colors.grey[100]),
                    child: ListView(
                      children: [
                        Container(
                          height: size.height * 0.2,
                          width: size.width * 0.05,
                          decoration: BoxDecoration(
                            color: Colors.grey[100],
                          ),
                          child: Image.asset('assets/images/onboarding2.png'),
                        ),
                        Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                  height: size.height * 0.13,
                                  width: size.width,
                                  padding: const EdgeInsets.all(10),
                                  decoration: const BoxDecoration(
                                    color: kPrimaryColor,
                                  ),
                                  child: Column(
                                    children: const [
                                      Text(
                                        'Latest Lottery Results',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'Anton',
                                          fontSize: 24,
                                        ),
                                      ),
                                      Text(
                                        'View All Results of your Favorite Lottery Games at your Convenience',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'Roboto',
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ],
                                  )),
                            ],
                          ),
                        ),
                        const Result(),
                        const Result(),
                        const Result(),
                        const Result(),
                        const Result(),
                        const Result(),
                        const Result(),
                        const Result(),
                        const Result(),
                       
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

