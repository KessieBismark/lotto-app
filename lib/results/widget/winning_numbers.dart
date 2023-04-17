// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class WinningNumbers extends StatelessWidget {
  final List<String> winnings;
  const WinningNumbers({Key? key, required this.winnings}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.15,
      width: size.width * 0.38,
      decoration: BoxDecoration(
        color: Color.fromRGBO(85, 98, 112, 10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Winning Numbers',
            style: TextStyle(
                color: Colors.white, fontFamily: 'Anton', fontSize: 14),
          ),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (int i = 0; i < winnings.length; i++)
                Winning(winningNo: '34'),
            ],
          )
        ],
      ),
    );
  }
}

class Winning extends StatelessWidget {
  final String winningNo;

  const Winning({
    Key? key,
    required this.winningNo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.all(1),
      margin: EdgeInsets.all(5),
      height: size.height * 0.04,
      width: size.width * 0.05,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 10, 141, 78),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Center(
        child: Text(
          winningNo,
          style: TextStyle(
              color: Colors.white,
              fontFamily: 'Lato',
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
