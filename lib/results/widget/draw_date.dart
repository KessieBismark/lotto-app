// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../../services/utils/helpers.dart';

class DrawDate extends StatelessWidget {
  final String name;
  final DateTime date;
  const DrawDate({Key? key, required this.name, required this.date})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.15,
      width: size.width * 0.18,
      decoration: BoxDecoration(
        color: Color.fromRGBO(3, 22, 52, 10),
      ),
      child: DateAndGame(
        date: date,
        name: name,
      ),
    );
  }
}

class DateAndGame extends StatelessWidget {
  final String name;
  final DateTime date;
  const DateAndGame({
    Key? key,
    required this.name,
    required this.date,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            date.dateTimeNuMShortString().toString(),
            style: TextStyle(
                color: Colors.white, fontFamily: 'Anton', fontSize: 14),
          ),
          Divider(),
          Container(
            padding: EdgeInsets.only(top: 6),
            child: Text(
              name,
              // 'Lucky Tuesday',
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Lato',
                  fontSize: 13,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
