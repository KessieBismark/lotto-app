// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';


class CallCashLotto extends StatelessWidget {
  const CallCashLotto({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: (){},
      child: Container(
        margin: EdgeInsets.symmetric(
          horizontal: 20,
        ),
        height: size.height * 0.06,
        decoration: BoxDecoration(
          color: Color.fromRGBO(3, 101, 100, 50),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Icon(
                Icons.call_end_rounded,
                color: Colors.white,
              ),
            ),
            Center(
              child: Text(
                'CALL CASHLOTTO',
                style: TextStyle(color: Colors.white, fontFamily: 'Lato'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
