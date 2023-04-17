import 'package:flutter/material.dart';

class Card4DetailCard2 extends StatelessWidget {
  const Card4DetailCard2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          height: size.height * 0.18,
          width: size.width * 0.9,
          decoration: BoxDecoration(
            color: Colors.purple,
            borderRadius: BorderRadius.circular(24),
            gradient: const LinearGradient(
              colors: [Colors.amber, Colors.purple],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            boxShadow: const [
              BoxShadow(
                color: Colors.amber,
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
                      margin: EdgeInsets.all(1),
                      child: const Text(
                        '“You can never have too much money.”',
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
                          'Jess C. Scott',
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
