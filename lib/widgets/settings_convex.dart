import 'package:flutter/material.dart';

class SettingsConvex extends StatelessWidget {
  const SettingsConvex({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
            child: Text('Settings Page'),
          ),
        ),
      ),
    );
  }
}
