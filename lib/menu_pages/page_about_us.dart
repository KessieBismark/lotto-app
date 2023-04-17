import 'package:flutter/material.dart';

class PageAboutUs extends StatelessWidget {
  const PageAboutUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 225, 234, 241),
        body: SingleChildScrollView(
            child: Column(children: [
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
                            height: 70,
                          ),
                          Text(
                            'About Us',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Anton',
                              fontSize: 28,
                              letterSpacing: 1,
                            ),
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
              height: size.height * 0.60,
              width: size.width * 0.95,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    child: Card(
                      clipBehavior: Clip.antiAlias,
                      elevation: 16,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  RichText(
                                    text: const TextSpan(
                                      text:
                                          'CashLotto has no direct or indirect affiliation with any Lottery Commission Program or Operator in Ghana. CashLotto only provides user-centered intermediary lottery service by buying lottery tickets on behalf of its users.',
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.black,
                                          letterSpacing: 1.0,
                                          fontFamily: 'Lato'),
                                    ),
                                  ),
                                  RichText(
                                    text: const TextSpan(
                                      text:
                                          'We do not sell lottery tickets, neither do we receive commissions from lottery organizations in exchange for our service.',
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.black,
                                          letterSpacing: 1.0,
                                          fontFamily: 'Lato'),
                                    ),
                                  ),
                                  RichText(
                                    text: const TextSpan(
                                      text:
                                          'Here is the breakdown of our service; when a user stake any of the games on CashLotto platform (either using our mobile app or www.thecashlotto.com), CashLotto acts as an agent placing the bet on behalf of the user, delivering stakes placed by users and handing over to users the winnings in accordance.',
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.black,
                                          letterSpacing: 1.0,
                                          fontFamily: 'Lato'),
                                    ),
                                  ),
                                  RichText(
                                    text: const TextSpan(
                                      text:
                                          'In other words, CashLotto acts as an intermediary lottery service between the user and the Authorized Licensed Lottery Operators under the NLA in Ghana.',
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.black,
                                          letterSpacing: 1.0,
                                          fontFamily: 'Lato'),
                                    ),
                                  ),
                                ]),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ))
        ])));
  }
}
