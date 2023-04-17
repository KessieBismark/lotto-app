import 'package:flutter/material.dart';

class SelectedPlay extends StatelessWidget {
  final List<dynamic> selectedList;
  const SelectedPlay({super.key, required this.selectedList});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        ...selectedList.map((e) {
          return Container(
            height: 33,
            width: 33,
            alignment: Alignment.center,
            margin: const EdgeInsets.all(5),
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
            decoration: BoxDecoration(
              color: Colors.lightGreen[800],
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(
              e < 10 ? "0$e" : e.toString(),
              style: const TextStyle(
                  fontSize: 18, fontFamily: 'Lato,', color: Colors.black),
            ),
          );
        }).toList(),
      ],
    );
  }
}
