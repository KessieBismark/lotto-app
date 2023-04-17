import 'package:flutter/material.dart';

class BankerBoard extends StatelessWidget {
  final String bankerBoard;
  const BankerBoard({Key? key, required this.bankerBoard}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Center(
            child: Container(
              margin: const EdgeInsets.all(7),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Text(
                bankerBoard,
                style: const TextStyle(
                    fontFamily: 'Anton',
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
            ),
          )
        ],
      ),
    );
  }
}
