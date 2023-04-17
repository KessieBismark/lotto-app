import 'package:cashlotto_app/constants.dart';
import 'package:cashlotto_app/widgets/subscribe_sheet.dart';
import 'package:flutter/material.dart';

class ForecastersList extends StatelessWidget {
  const ForecastersList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String selectedItem = '';
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: 180,
      child: Stack(
        children: [
          Positioned(
              child: Material(
            child: Container(
              height: 140,
              width: size.width * 0.9,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      offset: const Offset(-10, 10),
                      blurRadius: 20.0,
                      spreadRadius: 4.0),
                ],
              ),
            ),
          )),
          Positioned(
            top: 0,
            left: 5,
            child: Card(
              elevation: 10.0,
              shadowColor: Colors.grey.withOpacity(0.5),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Container(
                height: 150,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: const DecorationImage(
                    image: AssetImage('assets/images/splash1.png'),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: 160,
            top: 16,
            child: SizedBox(
              height: 150,
              width: 180,
              child: Column(
                children: [
                  Row(
                    children: const [
                      Text(
                        'Name: ',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                          fontFamily: 'Lato',
                          letterSpacing: 1,
                        ),
                      ),
                      Text(
                        'Win2Win',
                        style: TextStyle(
                            letterSpacing: 1,
                            fontSize: 14,
                            color: Color(0xFF363f93),
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Oswald'),
                      ),
                    ],
                  ),
                  Row(
                    children: const [
                      Text(
                        'Points: ',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                          fontFamily: 'Lato',
                          letterSpacing: 1,
                        ),
                      ),
                      Text(
                        '1,190',
                        style: TextStyle(
                            letterSpacing: 1,
                            fontSize: 14,
                            color: Color(0xFF363f93),
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Oswald'),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Text(
                        'Badge: ',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                          fontFamily: 'Lato',
                          letterSpacing: 1,
                        ),
                      ),
                      SizedBox(
                        height: size.height * 0.04,
                        child: Image.asset('assets/images/forecaster1.png'),
                      )
                    ],
                  ),
                  Row(
                    children: const [
                      Text(
                        'Status: ',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                          fontFamily: 'Lato',
                          letterSpacing: 1,
                        ),
                      ),
                      Text(
                        'Game Ready',
                        style: TextStyle(
                            letterSpacing: 1,
                            fontSize: 14,
                            color: Color(0xFF363f93),
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Oswald'),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 120,
            left: 220,
            child: GestureDetector(
              onTap: () {},
              child: SubscribeSheet(),
            ),
          ),
        ],
      ),
    );
  }
}
