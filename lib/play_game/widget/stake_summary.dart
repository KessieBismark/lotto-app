import 'package:flutter/material.dart';

class StakeSummary extends StatelessWidget {
  final String? gameType;
  final double price;
  final String possibleWin;
  final int? lines;
  const StakeSummary(
      {Key? key,
       this.gameType,
      required this.price,
      required this.possibleWin,
      this.lines})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Center(
      child: Container(
        padding: const EdgeInsets.all(6),
        decoration: const BoxDecoration(
          color: Color.fromRGBO(3, 22, 52, 10),
        ),
        height: size.height * 0.30,
        width: size.width * 0.8,
        child: ListView(
          children: [
            ListTile(
              dense: true,
              leading: const Text(
                'Game Type',
                style: TextStyle(
                  fontFamily: 'Roboto',
                  color: Colors.white,
                  fontSize: 15,
                ),
                textAlign: TextAlign.center,
              ),
              trailing: Text(
                gameType!,
                style: const TextStyle(
                  fontFamily: 'Anton',
                  color: Colors.white,
                  fontSize: 15,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Divider(
              height: 1,
              color: Colors.grey.shade400,
            ),
            ListTile(
              dense: true,
              leading: const Text(
                'Price',
                style: TextStyle(
                  fontFamily: 'Roboto',
                  color: Colors.white,
                  fontSize: 15,
                ),
                textAlign: TextAlign.center,
              ),
              trailing: Text(
                'GH₵ $price',
                style: const TextStyle(
                  fontFamily: 'Anton',
                  color: Colors.white,
                  fontSize: 15,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Divider(
              height: 1,
              color: Colors.grey.shade400,
            ),
            ListTile(
              dense: true,
              leading: const Text(
                'Possible win',
                style: TextStyle(
                  fontFamily: 'Roboto',
                  color: Colors.white,
                  fontSize: 15,
                ),
                textAlign: TextAlign.center,
              ),
              trailing: Text(
                possibleWin.toString(),
                style: const TextStyle(
                  fontFamily: 'Anton',
                  color: Colors.white,
                  fontSize: 15,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Divider(
              height: 1,
              color: Colors.grey.shade400,
            ),
            ListTile(
              dense: true,
              leading: const Text(
                'Lines',
                style: TextStyle(
                  fontFamily: 'Roboto',
                  color: Colors.white,
                  fontSize: 15,
                ),
                textAlign: TextAlign.center,
              ),
              trailing: Text(
                lines.toString(),
                style: const TextStyle(
                  fontFamily: 'Anton',
                  color: Colors.white,
                  fontSize: 15,
                ),
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      ),
    );
  }
}
