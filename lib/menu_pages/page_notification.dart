import 'package:cashlotto_app/constants.dart';
import 'package:flutter/material.dart';

class PageNotification extends StatelessWidget {
  late String title;
  late String subtitle;
  late String trailing;
  late VoidCallback onTab;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Card(
                color: kPrimaryColor,
                elevation: 5,
                child: Container(
                  margin: const EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Icon(
                        Icons.notifications_active_outlined,
                        color: Colors.white,
                        size: 25,
                      ),
                      Text(
                        'Notifications',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      Icon(
                        Icons.chat_bubble_outline,
                        color: Colors.white,
                        size: 23,
                      )
                    ],
                  ),
                ),
              ),
              const NotiList(),
              const NotiList(),
              const NotiList(),
              const NotiList(),
              const NotiList(),
              const NotiList(),
              const NotiList(),
              const NotiList(),
              const NotiList(),
              const NotiList(),
              const NotiList(),
              const NotiList(),
              const NotiList(),
              const NotiList(),
              const NotiList(),
              const NotiList(),
              const NotiList(),
              const NotiList(),
              const NotiList(),
              const NotiList(),
            ],
          ),
        ),
      ),
    );
  }
}

class NotiList extends StatelessWidget {
  const NotiList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: () {
          showDialog(
            context: context,
            builder: (context) => SimpleDialog(
              title: Text(
                'Sunday Special Closing Time',
                style: TextStyle(
                    fontFamily: 'Oswald',
                    fontSize: 13,
                    fontWeight: FontWeight.w600),
              ),
              contentPadding: const EdgeInsets.all(20),
              children: [
                Text(
                  'All Sunday Special games closes at 6:30pm',
                  style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 12,
                      fontWeight: FontWeight.bold),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text(
                      'close',
                      style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                    ))
              ],
            ),
          );
        },
        leading: const CircleAvatar(
          foregroundImage: AssetImage('assets/images/splash1.png'),
        ),
        title: Text(
          'Sunday Special Closing Time',
          style: TextStyle(
              fontFamily: 'Oswald', fontSize: 13, fontWeight: FontWeight.w600),
        ),
        dense: true,
        subtitle: Text(
          'All Sunday Special games closes at 6:30pm',
          style: TextStyle(
              fontFamily: 'Roboto', fontSize: 12, fontWeight: FontWeight.bold),
        ),
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '02-06-2022',
              style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 11,
                  fontWeight: FontWeight.w500),
            ),
            Text(
              '7:05pm',
              style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 11,
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }
}
