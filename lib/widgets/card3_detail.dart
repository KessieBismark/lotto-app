import 'package:flutter/material.dart';

class Card3Detail extends StatelessWidget {
  const Card3Detail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 225, 234, 241),
      body: SafeArea(
        child: SingleChildScrollView(
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
              Container(
                margin: const EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Explainer: How Do Lottery Drawings Work?',
                      style: TextStyle(
                        wordSpacing: 3,
                        color: Colors.black,
                        fontFamily: 'Lato',
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'You’ve ordered your lottery ticket via CashLotto, and now you’re excitedly waiting to find out if you’re a lucky winner. No matter the game you played, you may be wondering how the winners are selected and what exactly goes on behind the scenes.',
                      style: TextStyle(
                        wordSpacing: 3,
                        color: Colors.black,
                        fontFamily: 'Lato',
                        fontSize: 13,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'First Things First: Who Picks the Winners?',
                      style: TextStyle(
                          wordSpacing: 3,
                          color: Colors.black,
                          fontFamily: 'Lato',
                          fontSize: 13,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'First of all, we should note that at CashLotto we offer a secure platform so you can order Ghana NLA lottery games but game rules and drawings are administered by the NLA and out of our control. We don’t pick the winners—you have the same odds of winning on CashLotto as you do at the store. Now that\'s out of the way, let\'s dig in.',
                      style: TextStyle(
                        wordSpacing: 3,
                        color: Colors.black,
                        fontFamily: 'Lato',
                        fontSize: 13,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'What happens at a lottery drawing?',
                      style: TextStyle(
                          wordSpacing: 3,
                          color: Colors.black,
                          fontFamily: 'Lato',
                          fontSize: 13,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.start,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'A lottery drawing is the process of selecting the winning numbers for a particular game. Those winning numbers determine the number of winning tickets for each prize level. For example, Lucky Tuesday drawings are held Tuesdays at 7:30 p.m. GMT Ghana time. Five balls are drawn from a set of balls numbered 1 through 90. If the 5 numbers on your ticket, match the numbers drawn, you\'ve hit the jackpot!. You can watch live drawings for your NLA lottery on your tv station. No matter the type of lottery draw game you’re playing, winning numbers are always randomly selected and visible to the viewer—both during the "mixing" process and the numbers selection process.',
                      style: TextStyle(
                        wordSpacing: 3,
                        color: Colors.black,
                        fontFamily: 'Lato',
                        fontSize: 13,
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
