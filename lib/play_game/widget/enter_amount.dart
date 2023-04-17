import 'package:cashlotto_app/services/constants/constant.dart';
import 'package:cashlotto_app/services/widgets/textbox.dart';
import 'package:flutter/material.dart';

class EnterAmount extends StatelessWidget {
  final TextEditingController amountController;
  final Function(String)? onChange;
  const EnterAmount({super.key, required this.amountController, this.onChange});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.only(left: 6, right: 6),
      decoration: const BoxDecoration(
        color: Color.fromRGBO(3, 22, 52, 10),
      ),
      height: 50,
      width: size.width * 0.8,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          RichText(
            text: const TextSpan(
                text: 'Enter Amount ',
                style: TextStyle(
                    color: Colors.white, fontSize: 20, fontFamily: 'Anton'),
                children: <TextSpan>[TextSpan(text: r'(GH₵):')]),
          ),
          Container(
              width: myWidth(context, 4),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: MEdit(
                hint: "",
                inputType: TextInputType.number,
                onChange: onChange,
                controller: amountController,
                validate: (String? value) =>
                    value == null ? 'Please this field is required' : null,
              )

              //  TextField(
              //   controller: amountController,
              //   onSubmitted: (String value) {
              //     amountController.text = value;
              //   },

              //   keyboardType: TextInputType.number,
              //   textAlign: TextAlign.start,
              //   decoration: const InputDecoration(
              //       border: InputBorder.none,
              //       contentPadding: EdgeInsets.all(5),
              //       errorText: 'Please enter Valid Amount'),
              // ),
              ),
        ],
      ),
    );
  }
}
