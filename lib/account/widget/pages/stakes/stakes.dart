import 'package:cashlotto_app/services/constants/constant.dart';
import 'package:cashlotto_app/services/widgets/extension.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../constants.dart';
import '../../../../services/widgets/search.dart';
import 'stake_controller.dart';

final StakeController stakeCon = Get.put(StakeController());

class MyStakes extends StatelessWidget {
  const MyStakes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: 'Stakes'.toLabel(),
      ),
      body: SafeArea(
        child: Column(
          children: [
            SearchIconBar(
              seachOnTap: (text) {
                stakeCon.loadData.value = true;
                stakeCon.loadData.value = false;

                stakeCon.stakeList = stakeCon.stake.where((data) {
                  var date = data.date;
                  return date.contains(text!);
                }).toList();
              },
              //   widget:Container()
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child:
                  ListView.builder(
                    itemCount: stakeCon.stakeList.length,
                    itemBuilder: (BuildContext context, index) {
                return ExpansionTile(
                  title: ListTile(
                    title:
                        stakeCon.stakeList[index].betName.toLabel(bold: true),
                    subtitle: stakeCon.stakeList[index].date.toLabel(),
                    trailing: stakeCon.stakeList[index].status == 1
                        ? "Won".toLabel(color: Colors.green)
                        : "Lost".toLabel(color: Colors.red),
                  ),
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        "Game".toLabel(color: Colors.grey),
                        stakeCon.stakeList[index].betName.toLabel()
                      ],
                    ).padding9,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        "Date".toLabel(color: Colors.grey),
                        stakeCon.stakeList[index].date.toLabel()
                      ],
                    ).padding9,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        "Stake Amount (GHC)".toLabel(color: Colors.grey),
                        stakeCon.stakeList[index].stakeAmount.toLabel()
                      ],
                    ).padding9,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        "Potential Win".toLabel(color: Colors.grey),
                        stakeCon.stakeList[index].potentialWin.toLabel()
                      ],
                    ).padding9,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        "Play No".toLabel(color: Colors.grey),
                        stakeCon.stakeList[index].play.toLabel()
                      ],
                    ).padding9,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        "Result".toLabel(color: Colors.grey),
                        stakeCon.stakeList[index].result.toLabel()
                      ],
                    ).padding9,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        "Returns".toLabel(color: Colors.grey),
                      stakeCon.stakeList[index].status ==1?   stakeCon.stakeList[index].returns.toLabel(color: Colors.green): stakeCon.stakeList[index].returns.toLabel(color: Colors.red)
                      ],
                    ).padding9
                  ],
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
