import 'package:cashlotto_app/services/widgets/extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_countdown_timer/index.dart';

import '../../services/constants/constant.dart';
import '../../services/widgets/button.dart';

class TimerCountDown extends StatelessWidget {
  final CurrentRemainingTime duration;
  const TimerCountDown({super.key, required this.duration});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(child: buildTime(context));
  }

  Widget buildTime(context) {
    String twoDigits(int n) => n.toString().padLeft(2, '0');

    final days = twoDigits((duration.days!));
    final hours = twoDigits(duration.hours!.remainder(24));
    final minutes = twoDigits(duration.min!.remainder(60));
    final seconds = twoDigits(duration.sec!.remainder(60));

    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(15),
      height: myHeight(context, 3.2),
      width: myWidth(context, 1.1),
      // decoration: BoxDecoration(
      //   borderRadius: BorderRadius.circular(10),
      //   color: Colors.blue[800],
      // ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              buildTimeCard(time: days, header: 'DAYS'),
              buildTimeCard(time: hours, header: 'HOURS'),
              buildTimeCard(time: minutes, header: 'MINUTES'),
              buildTimeCard(time: seconds, header: 'SECONDS'),
            ],
          ).vPadding9,
          MButton(
            onTap: () => null,
            title: "Play Now",
            color: Colors.pink[800],
            textFont: 'Anton',
            textFontSize: 22,
            padding: const EdgeInsets.all(10),
          ).vPadding9
        ],
      ),
    );
  }

  Widget buildTimeCard({required String time, required String header}) =>
      Column(children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              child: Text(
                time,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 35,
                ),
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            Text(header,
                style: const TextStyle(
                  color: Colors.white,
                  fontFamily: 'Lato',
                  fontSize: 15,
                )),
          ],
        ),
      ]);
}
