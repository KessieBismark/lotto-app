import 'package:cashlotto_app/account/component/model.dart';
import 'package:cashlotto_app/services/widgets/extension.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../constants.dart';

class TransactionDetails extends StatelessWidget {
  final TransactionModel data;
  const TransactionDetails({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        centerTitle: true,
        title: 'Transaction Details'.toLabel(),
      ),
      body: SafeArea(
          child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              "Amount (GHC)".toLabel(),
              data.transactionType == 'Withdrawal'
                  ? "-${data.amount}".toLabel(bold: true, color: Colors.grey)
                  : "+${data.amount}".toLabel(bold: true, color: Colors.green)
            ],
          ).padding6,
          const Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              "Status".toLabel(color: Colors.grey),
              data.status == '1'
                  ? "Succeed".toLabel()
                  : "Unsuccessful".toLabel()
            ],
          ).padding6,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              "Time".toLabel(color: Colors.grey),
              data.date.toLabel()
            ],
          ).padding6,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              "Type".toLabel(color: Colors.grey),
              data.transactionType.toLabel()
            ],
          ).padding6,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              "Trade No.".toLabel(color: Colors.grey),
              data.tradeNo.toLabel()
            ],
          ).padding6,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              "Balance".toLabel(color: Colors.grey),
              data.balance.toLabel()
            ],
          ).padding6,
          const Divider(),
          "Contact our Customer Support for more assistance >"
              .toLabel(color: Colors.green)
              .center,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              "Contact ".toLabel(color: Colors.grey).margin6,
              InkWell(
                onTap: () => _makePhoneCall("+233 200 000 000"),
                child: "0200 000 000".toLabel(),
              )
            ],
          ).padding9
        ],
      ).padding9),
    );
  }

  Future<void> _makePhoneCall(String phoneNumber) async {
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );
    await launchUrl(launchUri);
  }
}
