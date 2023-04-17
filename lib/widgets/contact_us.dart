import 'package:flutter/material.dart';

import '../menu_pages/page_contact_us.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: ListTile(
        leading: const Icon(Icons.contact_phone_outlined),
        title: const Text(
          'Contact Us',
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
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) {
              return PageContact();
            }),
          );
        },
      ),
    );
  }
}
