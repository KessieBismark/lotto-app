// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class AccountNumber extends StatelessWidget {
  final String phone;
  const AccountNumber({Key? key, required this.phone}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.9,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Row(
            children: const <Widget>[
              Icon(Icons.phone),
              Text(
                'Phone: ',
                style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 16,
                    fontWeight: FontWeight.w700),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: const Text(
              '0201319792',
              style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 16,
                  fontWeight: FontWeight.w500),
            ),
          ),
        ],
      ),
    );
  }
}
