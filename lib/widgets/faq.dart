// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class FaqPage extends StatelessWidget {
  const FaqPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        leading: Icon(Icons.question_answer_outlined),
        title: Text(
          'Faq',
          style: TextStyle(fontFamily: 'Roboto', fontSize: 15),
        ),
        trailing: Icon(
          Icons.arrow_forward_ios_rounded,
          size: 18,
        ),
        onTap: () {},
      ),
    );
  }
}
