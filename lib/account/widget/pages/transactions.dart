import 'package:cashlotto_app/account/component/controller.dart';
import 'package:cashlotto_app/account/widget/pages/transaction_details.dart';
import 'package:cashlotto_app/services/widgets/dropdown.dart';
import 'package:cashlotto_app/services/widgets/extension.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constants.dart';

class MyTransactions extends GetView<AccountController> {
  const MyTransactions({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        centerTitle: true,
        // title: 'Deposits'.toLabel(),
        actions: [
          BTNDropDown(
              color: Colors.white,
              controller: controller.transaction,
              hint: "Transactions",
              list: controller.tTypes)
        ],
      ),
      body: SafeArea(
        child: ListView.builder(
            itemCount: controller.tList.length,
            itemBuilder: (BuildContext context, index) {
              return InkWell(
                onTap: () =>
                    Get.to(TransactionDetails(data: controller.tList[index])),
                child: ListTile(
                  title: controller.tList[index].transactionType
                      .toLabel(bold: true),
                  trailing:
                      controller.tList[index].transactionType == 'Withdrawal'
                          ? '-${controller.tList[index].amount}'
                              .toLabel(color: Colors.grey)
                          : '+${controller.tList[index].amount}'
                              .toLabel(color: Colors.green),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      controller.tList[index].date.toLabel(),
                      const Divider()
                    ],
                  ),
                ),
              );
            }).vPadding9,
      ),
    );
  }
}
