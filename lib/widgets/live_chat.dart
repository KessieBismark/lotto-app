// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class LiveChat extends StatelessWidget {
  const LiveChat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 20,
      ),
      height: size.height * 0.06,
      decoration: BoxDecoration(
        color: Colors.amber[800],
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(
              Icons.chat_outlined,
              color: Colors.white,
            ),
          ),
          Center(
            child: Text(
              'START LIVE CHART',
              style: TextStyle(color: Colors.white, fontFamily: 'Lato'),
            ),
          ),
        ],
      ),
    );
  }
}
