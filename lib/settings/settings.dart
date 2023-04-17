// ignore_for_file: prefer_const_constructors

import 'package:cashlotto_app/constants.dart';
import 'package:cashlotto_app/widgets/settings_convex.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import 'component/controller.dart';
import 'widget/edit_profile.dart';

class PageSettings extends GetView<SettingController> {
  const PageSettings({super.key});

 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      // appBar: AppBar(
      //   elevation: 0,
      //   leading: IconButton(
      //     icon: Icon(
      //       Icons.arrow_back,
      //       color: kPrimaryColor,
      //     ),
      //     onPressed: () => Get.toNamed('/home'),
      //   ),
      //   backgroundColor: Colors.grey.shade200,
      //   title: Text(
      //     'Settings',
      //     style: TextStyle(color: Colors.black, fontFamily: 'Roboto'),
      //   ),
      //   systemOverlayStyle: SystemUiOverlayStyle.dark,
      // ),
      body: SafeArea(
        child: Stack(children: [
          SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Card(
                  elevation: 8,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  color: kPrimaryColor,
                  child: ListTile(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) {
                          return EditProfile();
                        }),
                      );
                    },
                    title: Text(
                      'Edward Boakye Yiadom',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Lato'),
                    ),
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/profile1.png'),
                    ),
                    trailing: Icon(
                      Icons.edit,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Card(
                  elevation: 4,
                  margin: const EdgeInsets.fromLTRB(32, 8, 32, 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      ListTile(
                        leading: Icon(
                          Icons.lock_outline,
                          color: kPrimaryColor,
                        ),
                        title: Text(
                          'Change Password',
                          style: TextStyle(fontFamily: 'Lato'),
                        ),
                        trailing: Icon(Icons.keyboard_arrow_right),
                        onTap: () {
                          // open change password
                        },
                      ),
                      _builderDivider(),
                      ListTile(
                        leading: const Icon(FontAwesomeIcons.language,
                            color: kPrimaryColor),
                        title: Text(
                          'Change Language',
                          style: TextStyle(fontFamily: 'Lato'),
                        ),
                        trailing: Icon(Icons.keyboard_arrow_right),
                        onTap: () {
                          // open change language
                        },
                      ),
                      _builderDivider(),
                      ListTile(
                        leading: Icon(Icons.location_on, color: kPrimaryColor),
                        title: Text(
                          'Change Location',
                          style: TextStyle(fontFamily: 'Lato'),
                        ),
                        trailing: Icon(Icons.keyboard_arrow_right),
                        onTap: () {
                          // open change language
                        },
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 50),
                Text(
                  'Notification Settings',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.indigo,
                      fontFamily: 'Lato'),
                ),
                SwitchListTile(
                    activeColor: kPrimaryColor,
                    contentPadding: const EdgeInsets.all(0),
                    value: true,
                    title: Text(
                      'Received Notification',
                      style: TextStyle(fontFamily: 'Lato', fontSize: 14),
                    ),
                    onChanged: (val) {}),
                SwitchListTile(
                    dense: true,
                    activeColor: kPrimaryColor,
                    contentPadding: const EdgeInsets.all(0),
                    value: true,
                    title: Text(
                      'Received Newsletter',
                      style: TextStyle(fontFamily: 'Lato', fontSize: 14),
                    ),
                    onChanged: null),
                SwitchListTile(
                    dense: true,
                    activeColor: kPrimaryColor,
                    contentPadding: const EdgeInsets.all(0),
                    value: true,
                    title: Text(
                      'Received Offer Notification',
                      style: TextStyle(fontFamily: 'Lato', fontSize: 14),
                    ),
                    onChanged: (val) {}),
                SwitchListTile(
                    dense: true,
                    activeColor: kPrimaryColor,
                    contentPadding: const EdgeInsets.all(0),
                    value: true,
                    title: Text(
                      'Received App Updates',
                      style: TextStyle(fontFamily: 'Lato', fontSize: 14),
                    ),
                    onChanged: null),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}

class _builderDivider extends StatelessWidget {
  const _builderDivider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      width: double.infinity,
      height: 1,
      color: Colors.grey.shade300,
    );
  }
}
