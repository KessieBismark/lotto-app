import 'package:flutter/material.dart';

import '../menu_pages/page_proforecaster.dart';

class ProForecastersPage extends StatelessWidget {
  const ProForecastersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        leading: const Icon(Icons.badge_outlined),
        title: const Text(
          'Pro Forecasters',
          style: TextStyle(
            fontFamily: 'Robot5',
            fontSize: 15,
          ),
        ),
        trailing: const Icon(
          Icons.arrow_forward_ios_rounded,
          size: 18,
        ),
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return const PageProForecasters();
          }));
        },
      ),
    );
  }
}
