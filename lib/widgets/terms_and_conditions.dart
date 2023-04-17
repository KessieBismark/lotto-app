// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../menu_pages/terms_and_conditions.dart';

class TermsAndConditions extends StatelessWidget {
  const TermsAndConditions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        leading: Icon(Icons.align_horizontal_left_sharp),
        title: Text(
          'Terms & Condtions',
          style: TextStyle(fontFamily: 'Robot5', fontSize: 15),
        ),
        trailing: Icon(
          Icons.arrow_forward_ios_rounded,
          size: 18,
        ),
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return PageTermsAndConditions();
          }));
        },
      ),
    );
  }
}
