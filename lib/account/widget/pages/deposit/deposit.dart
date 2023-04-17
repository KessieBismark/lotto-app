import 'package:cashlotto_app/account/component/controller.dart';
import 'package:cashlotto_app/account/component/model.dart';
import 'package:cashlotto_app/services/widgets/button.dart';
import 'package:cashlotto_app/services/widgets/extension.dart';
import 'package:cashlotto_app/services/widgets/textbox.dart';
import 'package:cashlotto_app/services/widgets/waiting.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../../../../constants.dart';

final con = Get.find<AccountController>();

class Deposit extends StatelessWidget {
  final String phoneNumber;
  final String userID;
  const Deposit({super.key, required this.phoneNumber, required this.userID});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        centerTitle: true,
        title: 'Deposits'.toLabel(),
      ),
      body: SafeArea(
          child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: ["Mobile Number".toLabel(), phoneNumber.toLabel()],
          ).hPadding9.vPadding6,
          // WebViewWidget(
          //   controller: con.page,
          // ),
          Obx(() => con.isPay.value
              ? const MWaiting()
              : DropdownButton(
                  hint: con.paySelected.name.toLabel().hPadding9,
                  items: con.paymentMethod.map((PaymentPlatform user) {
                    return DropdownMenuItem(
                      value: user,
                      child: Row(
                        children: [
                          Image.asset(
                            user.imageUrl,
                            width: 20,
                          ).hPadding3,
                          Text(user.name).hPadding9
                        ],
                      ),
                    );
                  }).toList(),
                  onChanged: (value) {
                    con.paySelected = value!;
                    con.isPay.value = true;

                    con.isPay.value = false;
                  },
                )),
          const MEdit(hint: "Amount").padding9,
          MButton(
            onTap: () {},
            title: "Top Up Now",
            color: Colors.grey,
          )
        ],
      )),
    );
  }
}
