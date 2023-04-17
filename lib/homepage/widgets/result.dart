import 'package:flutter/material.dart';
import '../../results/widget/draw_date.dart';
import '../../results/widget/machine_numbers.dart';
import '../../results/widget/winning_numbers.dart';

class CurrentResult extends StatelessWidget {
  final String name;
  final DateTime date;
  const CurrentResult({super.key, required this.name, required this.date});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      //width: myWidth(context,1.3 ),
      width: double.infinity,
      // height: myHeight(context, 3),
      child: Row(
        children: [
          DrawDate(
            name: name,
            date: date,
          ),
          const WinningNumbers(
            winnings: ['34', '23', '78', '17', '32'],
          ),
          const MachineNumbers(),
        ],
      ),
    );
  }
}
