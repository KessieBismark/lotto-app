import 'package:flutter/material.dart';

class Timer extends StatelessWidget {
  final String timerBoard;
  const Timer({Key? key, required this.timerBoard}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: Column(
        children: [
          Container(
            height: size.height * 0.08,
            width: size.width * 0.12,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          Text(
            timerBoard,
            style: TextStyle(
                color: Colors.white,
                fontFamily: 'Lato',
                fontSize: 13,
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
