import 'package:cashlotto_app/play_game/widget/chip.dart';
import 'package:cashlotto_app/play_game/widget/selected_play.dart';
import 'package:cashlotto_app/play_game/widget/stake_summary.dart';
import 'package:cashlotto_app/services/widgets/extension.dart';
import 'package:cashlotto_app/services/widgets/waiting.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../constants.dart';
import '../services/widgets/dropdown.dart';
import 'component/controller.dart';
import 'widget/enter_amount.dart';

class PlayGame extends GetView<PlayGameController> {
  const PlayGame({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: const Color.fromRGBO(11, 46, 89, 5),
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: const Center(
          child: Text(
            'Play All Your Favorite Games',
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'Anton',
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          width: size.width * 0.95,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ////////////////////////////////////////////////////////////////////////////
              Container(
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: const Color.fromRGBO(250, 105, 0, 10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        "NLA Games".toLabel(color: Colors.white),
                        Obx(() => Checkbox(
                            value: controller.isNLA.value,
                            onChanged: (val) {
                              controller.isGame.value = true;
                              controller.isNLA.value = val!;
                              controller.isOther.value = false;
                              controller.isGame.value = false;
                            })),
                      ],
                    ).hPadding3,
                    Row(
                      children: [
                        "Other Games".toLabel(color: Colors.white),
                        Obx(() => Checkbox(
                            value: controller.isOther.value,
                            onChanged: (val) {
                              controller.isGame.value = true;
                              controller.isOther.value = val!;
                              controller.isNLA.value = false;
                              controller.isGame.value = false;
                            })),
                      ],
                    ).hPadding3
                  ],
                ),
              ).padding9,
              Obx(() => controller.isOther.value || controller.isNLA.value
                      ? DropDownText2(
                          isLoading: controller.isGame.value,
                          controller: controller.selectedGame,
                          color: const Color.fromRGBO(250, 105, 0, 10),
                          hint: "Select Game",
                          label: "Select Game",
                          list: controller.isNLA.value
                              ? controller.nlaList
                              : controller.others,
                          onChange: (val) {
                            controller.selectedGame = val;
                            controller.isGame.value = true;
                            controller.isGame.value = false;
                          }).padding9
                      : Container()

                  // DropDownText(
                  //       controller: controller.selectedGame.value,
                  //       label: "Select Game",
                  //       hint: "Select Game",
                  //       enable: !controller.isNLA.value && !controller.isOther.value
                  //           ? false
                  //           : true,
                  //       isLoading: controller.isGame.value,
                  //       list: controller.isNLA.value
                  //           ? controller.nlaList
                  //           : controller.others,
                  //       color: const Color.fromRGBO(250, 105, 0, 10),
                  //       onChange: (val) {
                  //         controller.selectedGame.value.text = val!;
                  //         controller.isGame.value = true;
                  //         controller.isGame.value = false;
                  //       },
                  //     ).padding9
                  ),

              DropDownText2(
                isLoading: controller.isGame.value,
                controller: controller.selectedGameType,
                color: const Color.fromRGBO(250, 105, 0, 10),
                hint: "Select Game Type",
                label: "Select Game Type",
                list: controller.gameType,
                onChange: (val) {
                  controller.selectedGameType = val;
                  controller.selectedList.clear();
                  controller.message.value = "";
                  //  controller.calculateWinning();
                },
              ).padding9,
              const SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  Obx(() => controller.message.value
                      .toAutoLabel(color: Colors.red, fontsize: 15)),
                  const SizedBox(
                    height: 5,
                  ),
                  Wrap(
                    spacing: 8.0, // gap between adjacent chips
                    runSpacing: 4.0,
                    children: [
                      for (int i = 1; i < 91; i++)
                        Obx(() => MyChips(
                              text: i,
                              onSelected: (val) {
                                if (controller.selectedList.contains(i)) {
                                  controller.selectedList.remove(i);
                                  controller.calculateWinning();
                                } else {
                                  if (controller
                                          .selectedGameType!.maxPlayCount >
                                      controller.selectedList.value.length) {
                                    controller.selectedList.add(i);
                                    controller.calculateWinning();
                                  }
                                }
                              },
                              selectedList: controller.selectedList.value,
                            ))
                    ],
                  ),
                ],
              ).card,
              Column(
                children: [
                  const SizedBox(height: 20),
                  const Divider(
                    color: Colors.grey,
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 10),
                    height: size.height * 0.05,
                    width: size.width * 0.8,
                    decoration: const BoxDecoration(
                        color: Color.fromRGBO(105, 210, 231, 50)),
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    child: const Text(
                      'Selected Numbers',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Anton',
                          fontSize: 20),
                    ),
                  ),
                  Center(
                    child: Container(
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: const Color.fromRGBO(3, 22, 52, 10),
                            borderRadius: BorderRadius.circular(5)),
                        height: size.height * 0.2,
                        width: size.width * 0.8,
                        child: Obx(() => SelectedPlay(
                            selectedList: controller.selectedList.value))),
                  ),
                ],
              ),
              //  const SizedBox(height: 20),
              const Divider(),
              EnterAmount(
                amountController: controller.stakeAmount,
                onChange: (val) {
                  // if (controller.stakeAmount.text.isNotEmpty) {
                  //   controller.price.value = double.parse(val);
                  //   controller.lines.value = Calculations.combination(
                  //       controller.selectedList.length,
                  //       controller.selectedGameType.text);
                  //   controller.potentialWin.value = Calculations.directWinning(
                  //       controller.selectedGameType.value.text,
                  //       double.parse(controller.stakeAmount.text),
                  //       controller.lines.value);
                  // }

                  controller.price.value = double.parse(val);
                  controller.calculateWinning();
                },
              ),
              const Divider(),
              // const SizedBox(height: 20),
              Obx(() => controller.isGame.value
                  ? const MWaiting()
                  : StakeSummary(
                      gameType: controller.selectedGame.name,
                      price: controller.price.value,
                      possibleWin:
                          controller.potentialWin.value.toStringAsFixed(0),
                      lines: controller.lines.value,
                    )),
              Obx(() => GestureDetector(
                    onTap: controller.selectComplete.value
                        ? () {
                            if (controller.price.value < 0.2) {
                              Get.snackbar(
                                colorText:Colors.white,
                                "Low Amount",
                                  "Play amount should not be less than 0.20p");
                            }
                          }
                        : null,
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      height: size.height * 0.05,
                      width: size.width * 0.8,
                      decoration: BoxDecoration(
                          color: const Color.fromRGBO(233, 127, 2, 10),
                          borderRadius: BorderRadius.circular(5)),
                      child: const Text(
                        'Place Game',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Lato',
                            fontSize: 14,
                            fontWeight: FontWeight.w600),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  )),
              const SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}
