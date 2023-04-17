import 'package:flutter/material.dart';

import '../menu_pages/page_notification.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        leading: Icon(Icons.notification_important),
        title: Text(
          'Notifications',
          style: TextStyle(fontFamily: 'Robot5', fontSize: 15),
        ),
        trailing: Icon(
          Icons.arrow_forward_ios_rounded,
          size: 18,
        ),
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return PageNotification();
          }));
        },
      ),
    );
  }
}
