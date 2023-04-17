import 'package:flutter/material.dart';

class Card4DetailCard5 extends StatelessWidget {
  const Card4DetailCard5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          height: size.height * 0.18,
          width: size.width * 0.9,
          decoration: BoxDecoration(
            color: Colors.lightBlueAccent.shade100,
            borderRadius: BorderRadius.circular(24),
            gradient: const LinearGradient(
              colors: [Colors.lightBlueAccent, Colors.pink],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            boxShadow: const [
              BoxShadow(
                color: Colors.lightBlueAccent,
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
                    Container(
                      margin: EdgeInsets.all(5),
                      child: const Text(
                        '“You were born to win, but to be a winner, you must plan to win, prepare to win and expect to win.”',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.w500,
                        ),
                        textAlign: TextAlign.start,
                      ),
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
                          'Zig Ziglar',
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
