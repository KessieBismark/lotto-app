import 'package:cashlotto_app/services/widgets/extension.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class MyChips extends StatelessWidget {
  final dynamic text;
  final Function(bool)? onSelected;
  final bool isSelected;
  final List<dynamic> selectedList;

  const MyChips(
      {super.key,
      required this.text,
      this.onSelected,
      this.isSelected = false,
      required this.selectedList});

  @override
  Widget build(BuildContext context) {
    return FilterChip(
        backgroundColor: const Color.fromARGB(255, 223, 222, 222),
        showCheckmark: false,
        //selected: isSelected,
        //   materialTapTargetSize: MaterialTapTargetSize.padded,
        selected: selectedList.contains(text),
        selectedColor: Colors.lightGreen[800],
        label: text < 10
            ? "0$text".toLabel(
                color: Colors.black, font: 'Lato', bold: true, fontsize: 15)
            : "$text".toLabel(
                color: Colors.black, font: 'Lato', bold: true, fontsize: 15),
        onSelected: onSelected);
  }
}
