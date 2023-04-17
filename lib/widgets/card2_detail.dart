import 'package:flutter/material.dart';

class Card2Detail extends StatelessWidget {
  const Card2Detail({Key? key}) : super(key: key);

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
                      'How to play NLA Lotto Games on TheCashlotto',
                      style: TextStyle(
                        wordSpacing: 3,
                        color: Colors.black,
                        fontFamily: 'Lato',
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Players select at least one out of ninety balls numbered 1-90. A draw is held at the end of each day except Sundays to randomly select 5 out of the 90 balls. If the numbers on the 5 selected balls match any of the numbers selected by the player at the time of play, then he is a winner. The daily draw games are Monday Special, Lucky Tuesday, Midweek, Fortune Thursday, Friday Bonanza and National Weekly on Saturdays. Variations of the games to play each day are below:',
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
                      r'●	Direct 2: Any two numbers out of the 5 winning numbers to be drawn. (e.g. If a player selects 49 and 7, he is a winner if 49 and 7 are among the 5 numbers drawn)',
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
                      r'●	Direct 3: Any three numbers out of the 5 winning numbers to be drawn. (e.g. If a player selects 11, 44 and 86, he is a winner if 11, 44 and 86 are among the 5 numbers drawn)',
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
                      r'●	Perm 2: This is basically selecting more than 2 Numbers and combining them in sets of 2. If a player selects numbers 11-22-33, Perm 2 will give combinations of (i) 11-22, (ii) 11-33 and (iii) 22-33. Here, the winning pattern is same as direct-2.',
                      style: TextStyle(
                        wordSpacing: 3,
                        color: Colors.black,
                        fontFamily: 'Lato',
                        fontSize: 13,
                      ),
                      textAlign: TextAlign.start,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      r'●	Perm 3: This is basically selecting more than 3 Numbers and combining them in sets of 3. If a player selects numbers 11-22-33-44, Perm 3 will give combinations of (i) 11-22-33, (ii) 11-22-44, (iii) 11-33-44 (iv) 22-33-44. Here, the winning pattern is same as direct-3.',
                      style: TextStyle(
                        wordSpacing: 3,
                        color: Colors.black,
                        fontFamily: 'Lato',
                        fontSize: 13,
                      ),
                      textAlign: TextAlign.start,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      r'●	Banker 1 against all numbers: This is selecting one number and pairing it with the rest of 89 numbers. (e.g. if player selects 70 against all, this means 70 is his banker.) This banker must be one of the 5 winning numbers.',
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
