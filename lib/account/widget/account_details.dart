import 'package:cashlotto_app/services/widgets/extension.dart';
import 'package:flutter/material.dart';
import 'package:social_share/social_share.dart';

class AccountDetails extends StatelessWidget {
  final String name;
  final String phone;
  final String email;
  final String code;
  const AccountDetails({
    Key? key,
    required this.name,
    required this.phone,
    required this.email,
    required this.code,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Row(
              children: const [
                Icon(Icons.person),
                Text(
                  'Name: ',
                  style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 16,
                      fontWeight: FontWeight.w700),
                ),
              ],
            ),
            Text(
              name,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
          ],
        ),
        const Divider(),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Row(
              children: const [
                Icon(Icons.phone),
                Text(
                  'Phone: ',
                  style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 16,
                      fontWeight: FontWeight.w700),
                ),
              ],
            ),
            Text(
              phone,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
          ],
        ),
        const Divider(),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Row(
              children: const [
                Icon(Icons.email),
                Text(
                  'Email: ',
                  style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 16,
                      fontWeight: FontWeight.w700),
                ),
              ],
            ),
            Text(
              email,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
          ],
        ),
        const Divider(),
        InkWell(
          onTap: () => SocialShare.shareOptions(
              "Hi, click on this link to join the lotto app"),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: const [
                  Icon(Icons.share),
                  Text(
                    'Share Your Referral Code',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              Text(
                code,
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ),
      ],
    ).padding9.card;
  }
}
