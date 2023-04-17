import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AccountNavIcon extends StatelessWidget {
  const AccountNavIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
        onTap: () => Get.toNamed('/home'),
        child: Container(
          // margin: const EdgeInsets.symmetric(horizontal: 32, vertical: 32),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: Colors.amberAccent),
                child: Row(
                  children: const <Widget>[
                    Icon(
                      Icons.arrow_back_ios_new_sharp,
                      size: 34,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
