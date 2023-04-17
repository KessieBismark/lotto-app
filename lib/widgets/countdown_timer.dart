import 'package:flutter/material.dart';

import 'timer.dart';

class CountDownTimer extends StatelessWidget {
  const CountDownTimer({Key? key, countDownTimer}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.all(10),
      height: size.height * 0.2,
      width: size.width * 0.8,
      decoration: BoxDecoration(
        color: Colors.amber[700],
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              // Timer
              Timer(timerBoard: 'Days'),
              Timer(timerBoard: 'Hours'),
              Timer(timerBoard: 'Minutes'),
              Timer(timerBoard: 'Seconds'),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(top: 12),
            padding: const EdgeInsets.all(5),
            height: size.height * 0.05,
            width: size.width * 0.4,
            decoration: BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.circular(20)),
            child: Center(
              child: Container(
                child: const Text(
                  'Play Now',
                  style: TextStyle(
                      color: Colors.white, fontFamily: 'Anton', fontSize: 20),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
