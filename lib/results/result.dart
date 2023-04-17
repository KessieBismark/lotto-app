import 'package:cashlotto_app/services/widgets/extension.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constants.dart';
import 'component/controller.dart';

class Result extends GetView<ResultController> {
  const Result({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kPrimaryColor,
        title: "Results".toLabel(),
      ),
      body: SafeArea(
        child: ListView.builder(
            itemCount: controller.results.length,
            itemBuilder: (BuildContext context, index) {
              return ListTile(
                title: controller.results[index].name.toAutoLabel(bold: true),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    "Winning No: ${controller.results[index].winning}".toLabel(
                      color: Colors.green,
                    ),
                    "Machine No: ${controller.results[index].machine}"
                        .toAutoLabel()
                  ],
                ),
              ).card;
            }),
      ),
    );
  }
}
