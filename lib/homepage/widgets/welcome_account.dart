import 'package:cashlotto_app/account/account.dart';
import 'package:cashlotto_app/services/utils/helpers.dart';
import 'package:cashlotto_app/services/widgets/extension.dart';
import 'package:flutter/material.dart';


class WelcomeAccount extends StatelessWidget {
  final String user;
  final DateTime date;
  final double amount;
  const WelcomeAccount(
      {Key? key, required this.user, required this.date, required this.amount})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Welcome Edward, wallet and account balance
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              user.toLabel(
                color: Colors.white,
                font: 'Oswald',
                bold: true,
                fontsize: 22,
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
              date.dateTimeFormatString().toLabel(
                    color: Colors.white70,
                    font: 'Roboto',
                  )
            ],
          ),

          // Wallet & Account Balance Row
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 15),
                decoration: BoxDecoration(
                    color: const Color.fromARGB(
                      255,
                      222,
                      111,
                      241,
                    ),
                    borderRadius: BorderRadius.circular(10)),
                padding: const EdgeInsets.all(5),
                child: const Icon(
                  Icons.account_balance_wallet,
                  color: Colors.white,
                ),
              ),
              SizedBox(width: size.width * 0.01),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const Accounts();
                  }));
                },
                child: Container(
                    margin: const EdgeInsets.only(bottom: 15),
                    child: Utils().formatPrice(amount).toLabel(
                          color: Colors.white,
                          fontsize: 15,
                          bold: true,
                          font: 'Oswald',
                        )),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
