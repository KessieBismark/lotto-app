import 'package:flutter/material.dart';

class WinnersList extends StatelessWidget {
  const WinnersList(
      {Key? key, required this.name, required this.game, required this.amount})
      : super(key: key);
  final String name;
  final String game;
  final String amount;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      // margin: EdgeInsets.only(top: 10),
      decoration: const BoxDecoration(
        color: Color.fromRGBO(3, 22, 52, 20),
      ),
      height: size.height * 0.08,
      width: size.width,
      child: ListTile(
          dense: true,
          title: Text(
            name,
            style: const TextStyle(
                fontFamily: 'Lato',
                fontSize: 14,
                color: Colors.white,
                fontWeight: FontWeight.bold),
          ),
          subtitle: Text(
            game,
            style: const TextStyle(
                fontFamily: 'Lato',
                fontSize: 12,
                color: Colors.white,
                fontWeight: FontWeight.bold),
          ),
          trailing: SizedBox(
            height: size.height * 0.05,
            width: size.width * 0.3,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Text(
                  r'GH₵  ',
                  style: TextStyle(
                      fontFamily: 'Anton', fontSize: 14, color: Colors.white),
                  textAlign: TextAlign.center,
                ),
                Container(
                  child: Text(
                    amount,
                    style: const TextStyle(
                        fontFamily: 'Anton', fontSize: 14, color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
