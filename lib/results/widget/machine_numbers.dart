// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class MachineNumbers extends StatelessWidget {
  const MachineNumbers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.15,
      width: size.width * 0.41,
      decoration: BoxDecoration(
        color: Color.fromRGBO(3, 101, 100, 10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Machine Numbers',
            style: TextStyle(
                color: Colors.white, fontFamily: 'Anton', fontSize: 14),
          ),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Machine(machineNo: '54'),
              Machine(machineNo: '17'),
              Machine(machineNo: '23'),
              Machine(machineNo: '45'),
              Machine(machineNo: '27'),
            ],
          ),
        ],
      ),
    );
  }
}

class Machine extends StatelessWidget {
  final String machineNo;
  const Machine({
    Key? key,
    required this.machineNo,
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
        color: Color.fromRGBO(3, 22, 52, 10),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Center(
        child: Text(
          machineNo,
          style: TextStyle(
              color: Colors.white,
              fontFamily: 'Lato',
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
