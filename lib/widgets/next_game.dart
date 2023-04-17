import 'package:flutter/material.dart';

class NextGame extends StatelessWidget {
  const NextGame({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.all(10),
      height: size.height * 0.06,
      width: size.width * 0.3,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 59, 105, 6),
        borderRadius: BorderRadius.circular(20),
      ),
      child: const Center(
        child: Text(
          'NEXT GAME',
          style:
              TextStyle(color: Colors.white, fontFamily: 'Anton', fontSize: 22),
        ),
      ),
    );
  }
}
