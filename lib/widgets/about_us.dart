// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../menu_pages/page_about_us.dart';


class FeedBackPage extends StatelessWidget {
  const FeedBackPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        leading: Icon(Icons.feedback_rounded),
        title: Text(
          'About Us',
          style: TextStyle(fontFamily: 'Robot5', fontSize: 15),
        ),
        trailing: Icon(
          Icons.arrow_forward_ios_rounded,
          size: 18,
        ),
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return PageAboutUs();
          }));
        },
      ),
    );
  }
}
