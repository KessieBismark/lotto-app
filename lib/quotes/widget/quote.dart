import 'package:flutter/material.dart';

class Card4DetailCard1 extends StatelessWidget {
  final String quoter;
  final String quote;
  final String imageLink;
  const Card4DetailCard1(
      {Key? key,
      required this.quoter,
      required this.quote,
      required this.imageLink})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          height: size.height * 0.18,
          width: size.width * 1,
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(24),
            gradient: const LinearGradient(
              colors: [Colors.pink, Colors.red],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            boxShadow: const [
              BoxShadow(
                color: Colors.red,
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
                flex: 1,
                child: Image.asset(
                  imageLink,
                  height: 100,
                  width: 100,
                ),
              ),
              Expanded(
                flex: 5,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      quote,
                      style: const TextStyle(
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
                      children: <Widget>[
                        const Icon(
                          Icons.person,
                          color: Colors.white,
                        ),
                        Text(
                          quoter,
                          style: const TextStyle(
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
