import 'package:flutter/material.dart';

class Card4DetailCard7 extends StatelessWidget {
  const Card4DetailCard7({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          height: size.height * 0.18,
          width: size.width * 0.9,
          decoration: BoxDecoration(
            color: Colors.cyan,
            borderRadius: BorderRadius.circular(24),
            gradient: const LinearGradient(
              colors: [Colors.cyan, Colors.redAccent],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            boxShadow: const [
              BoxShadow(
                color: Colors.cyan,
                blurRadius: 12,
                offset: Offset(0, 6),
              ),
            ],
          ),
        ),
        Positioned.fill(
          child: Row(
            children: <Widget>[
              Expanded(
                child: Image.asset(
                  'assets/images/splash1.png',
                  height: 100,
                  width: 100,
                ),
                flex: 2,
              ),
              Expanded(
                flex: 4,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const Text(
                      '“Winners are not people who never fail but people who never quit.”',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.start,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: const <Widget>[
                        Icon(
                          Icons.person,
                          color: Colors.white,
                        ),
                        Text(
                          'Sherrie Larsen',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Lato',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
