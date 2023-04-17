import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'model.dart';

class AccountController extends GetxController {
  final String name = 'djujdu jufjaduf';
  final String phone = 'dsfd';
  final String email = 'df';
  final String code = '';
  final transaction = TextEditingController();
  List<TransactionModel> tList = <TransactionModel>[];
  final String phoneNumber = "(+233) 05*****814";
  final String userID = "248243";
  PaymentPlatform paySelected = PaymentPlatform(
      name: "MTN Mobile Money", id: "1", imageUrl: "assets/images/mtn.jpg");
  var isPay = false.obs;

  List<String> tTypes = ['Transactions', 'Deposit', 'Withdrawal'];

  List<PaymentPlatform> paymentMethod = [
    PaymentPlatform(
        name: "MTN Mobile Money", id: "1", imageUrl: "assets/images/mtn.jpg"),
    PaymentPlatform(
        name: "Vodafone Cash", id: "2", imageUrl: "assets/images/vodafone.jpg"),
    PaymentPlatform(
        name: "Airtel", id: "3", imageUrl: "assets/images/airtel.jpg")
  ];

  // var page = WebViewController()
  //   ..setJavaScriptMode(JavaScriptMode.unrestricted)
  //   ..setBackgroundColor(const Color(0x00000000))
  //   ..setNavigationDelegate(
  //     NavigationDelegate(
  //       onProgress: (int progress) {
  //         // Update loading bar.
  //       },
  //       onPageStarted: (String url) {},
  //       onPageFinished: (String url) {},
  //       onWebResourceError: (WebResourceError error) {},
  //       onNavigationRequest: (NavigationRequest request) {
  //         if (request.url.startsWith('https://www.youtube.com/')) {
  //           return NavigationDecision.prevent;
  //         }
  //         return NavigationDecision.navigate;
  //       },
  //     ),
  //   )
  //   ..loadRequest(Uri.parse('https://flutter.dev'));

  @override
  void onInit() {
    super.onInit();
    transaction.text = 'Transactions';

    tList = [
      TransactionModel(
          id: '1',
          balance: '300',
          amount: '20',
          transactionType: 'Deposit',
          date: '2023-03-04 12:02:34',
          tradeNo: '2678673616',
          status: '1',
          tNumber: '87387837312'),
      TransactionModel(
          id: '2',
          balance: '280',
          amount: '20',
          transactionType: 'Withdrawal',
          date: '2023-03-04 12:02:34',
          tradeNo: '2678673616',
          status: '0',
          tNumber: '87387837312'),
      TransactionModel(
          id: '3',
          balance: '200',
          amount: '80',
          transactionType: 'Withdrawal',
          date: '2023-03-04 12:02:34',
          tradeNo: '2678673616',
          status: '1',
          tNumber: '87387837312'),
      TransactionModel(
          id: '4',
          balance: '220',
          amount: '20',
          transactionType: 'Deposit',
          date: '2023-03-04 12:02:34',
          tradeNo: '2678673616',
          status: '1',
          tNumber: '87387837312'),
      TransactionModel(
          id: '5',
          balance: '330',
          amount: '10',
          transactionType: 'Deposit',
          date: '2023-03-04 12:02:34',
          tradeNo: '2678673616',
          status: '1',
          tNumber: '87387837312')
    ];
  }
}
