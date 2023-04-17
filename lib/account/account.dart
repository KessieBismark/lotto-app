import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:social_share/social_share.dart';
import 'component/controller.dart';
import 'widget/deposit_withdraw.dart';
import 'widget/pages/transactions.dart';
import 'widget/pages/stakes/stakes.dart';

class Accounts extends GetView<AccountController> {
  const Accounts({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey[100],
        body: Center(
          child: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.all(16),
                    width: 200,
                    height: 200,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            'https://images.unsplash.com/photo-1517849845537-4d257902454a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8cHJvZmlsZSUyMHBpY3R1cmV8ZW58MHx8MHx8&auto=format&fit=crop&w=400&q=60'),
                      ),
                    ),
                  ),
                  const Text(
                    '_name',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      const Icon(Icons.phone),
                      const SizedBox(width: 8),
                      Text(controller.phone),
                      const SizedBox(width: 16),
                      const Icon(Icons.email),
                      const SizedBox(width: 8),
                      Text(controller.email),
                      const SizedBox(width: 8),
                      IconButton(
                          onPressed: () => SocialShare.shareOptions(
                              "Hi, click on this link to join the lotto app"),
                          icon: const Icon(Icons.share))
                    ],
                  ),
                  const Divider(),
                  // Container(
                  //   child: Column(
                  //     children: [
                  //       InkWell(
                  //         onTap: () {
                  //           Navigator.push(context,
                  //               MaterialPageRoute(builder: (context) {
                  //             return const Dash();
                  //           }));
                  //         },
                  //         splashColor: Colors.redAccent,
                  //         child: Container(
                  //           padding: const EdgeInsets.only(top: 15),
                  //           margin: const EdgeInsets.only(top: 20),
                  //           height: size.height * 0.20,
                  //           width: double.infinity,
                  //           child: Image.asset('assets/images/splash1.png'),
                  //         ),
                  //       ),
                  //       AccountDetails(
                  //           name: controller.name,
                  //           phone: controller.phone,
                  //           email: controller.email,
                  //           code: controller.code),
                  //     ],
                  //   ),
                  // ),
                  // const Divider(),

                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  // Deposit and Withdrawal

                  const DepositWithdraw(),
                  SizedBox(
                    height: size.height * 0.05,
                  ),

                  // My Stakes
                  InkWell(
                    onTap: () => Get.to(const MyStakes()),
                    splashColor: Colors.lightBlue,
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.lightGreen,
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.lightGreen,
                              blurRadius: 10.0,
                              offset: Offset(0, -3),
                            ),
                          ]),
                      margin: const EdgeInsets.all(10),
                      height: size.height * 0.06,
                      width: size.width * 0.8,
                      padding: const EdgeInsets.all(5),
                      child: const Center(
                        child: Text('MY STAKES',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Oswald',
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center),
                      ),
                    ),
                  ),

                  // My Deposit

                  InkWell(
                    onTap: () => Get.to(const MyTransactions()),
                    splashColor: Colors.lightGreen,
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.lightBlue,
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.lightBlue,
                              blurRadius: 10.0,
                              offset: Offset(0, -3),
                            ),
                          ]),
                      margin: const EdgeInsets.all(10),
                      height: size.height * 0.06,
                      width: size.width * 0.8,
                      padding: const EdgeInsets.all(5),
                      child: const Center(
                        child: Text('MY TRANSACTIONS',
                            style: TextStyle(
                              fontFamily: 'Anton',
                              color: Colors.white,
                              fontSize: 22,
                            ),
                            textAlign: TextAlign.center),
                      ),
                    ),
                  ),

                  //  My Withdrawals
                  // InkWell(
                  //   onTap: () => Get.to(const MyWithdrawals()),
                  //   splashColor: Colors.lightBlue,
                  //   child: Container(
                  //     decoration: BoxDecoration(
                  //       borderRadius: BorderRadius.circular(30),
                  //       color: Colors.indigoAccent,
                  //       boxShadow: const [
                  //         BoxShadow(
                  //           color: Colors.indigo,
                  //           blurRadius: 10.0,
                  //           offset: Offset(0, -3),
                  //         ),
                  //       ],
                  //     ),
                  //     margin: const EdgeInsets.all(10),
                  //     height: size.height * 0.06,
                  //     width: size.width * 0.8,
                  //     padding: const EdgeInsets.all(5),
                  //     child: const Center(
                  //       child: Text('MY WITHDRAWALS',
                  //           style: TextStyle(
                  //             fontFamily: 'Anton',
                  //             color: Colors.white,
                  //             fontSize: 20,
                  //           ),
                  //           textAlign: TextAlign.center),
                  //     ),
                  //   ),
                  // ),
                  const SizedBox(
                    height: 30,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
