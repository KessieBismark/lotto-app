import 'package:cashlotto_app/account/component/controller.dart';
import 'package:cashlotto_app/account/widget/pages/deposit/deposit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widgets/subscribe_sheet.dart';

final con = Get.find<AccountController>();

class DepositWithdraw extends StatelessWidget {
  const DepositWithdraw({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      children: <Widget>[
        Stack(children: [
          Column(children: [
            InkWell(
              onTap: () => Get.to(Deposit(
                phoneNumber: con.phoneNumber,
                userID: con.userID,
              )),
              splashColor: Colors.lightBlue,
              child: Container(
                margin: const EdgeInsets.only(left: 15),
                padding: EdgeInsets.symmetric(
                    horizontal: size.height * 0.04,
                    vertical: size.width * 0.03),
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(16)),
                child: const Text(
                  'DEPOSIT',
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Anton',
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.amber,
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 10.0,
                      offset: Offset(0, -3),
                    ),
                  ]),
              margin: const EdgeInsets.only(left: 20),
              height: size.height * 0.14,
              width: size.width * 0.4,
              padding: const EdgeInsets.all(10),
              child: const Center(
                child: Text(r'GH₵ 500.00',
                    style: TextStyle(
                      fontFamily: 'Anton',
                      fontSize: 20,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center),
              ),
            ),
          ]),
        ]),
        Stack(children: [
          Column(children: [
            InkWell(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return SubscribeSheet();
                }));
              },
              splashColor: Colors.amber,
              child: Container(
                margin: const EdgeInsets.only(left: 10),
                padding: EdgeInsets.symmetric(
                    horizontal: size.height * 0.02,
                    vertical: size.width * 0.03),
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Colors.lightBlue,
                    borderRadius: BorderRadius.circular(16)),
                child: const Text(
                  'WITHDRAW',
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Anton',
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.lightBlue,
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 10.0,
                      offset: Offset(0, -7),
                    ),
                  ]),
              margin: const EdgeInsets.only(left: 15),
              height: size.height * 0.14,
              width: size.width * 0.4,
              padding: const EdgeInsets.all(10),
              child: const Center(
                child: Text(r'GH₵ 700.00',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Anton',
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.center),
              ),
            ),
          ]),
        ]),
      ],
    );
  }
}
