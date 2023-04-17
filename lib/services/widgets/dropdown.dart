import 'package:dropdown_search/dropdown_search.dart';
import 'extension.dart';
import 'package:flutter/material.dart';

import 'waiting.dart';

class DropDownText extends StatelessWidget {
  final String hint;
  final String label;
  final Color? color;
  final bool enable;
  final bool isLoading;
  final TextEditingController controller;
  final String? Function(String?)? validate;
  final List<String> list;
  final Function(String?)? onChange;

  const DropDownText(
      {Key? key,
      required this.hint,
      required this.label,
      required this.controller,
      this.isLoading = false,
      this.enable = true,
      this.validate,
      this.onChange,
      required this.list,
      this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? const MWaiting()
        : Container(
            decoration: BoxDecoration(
                color: color, borderRadius: BorderRadius.circular(8)),
            child: DropdownSearch<String>(
              enabled: enable,
              dropdownDecoratorProps: DropDownDecoratorProps(
                dropdownSearchDecoration: InputDecoration(
                    fillColor: color,
                    hintText: hint,
                    hintStyle: const TextStyle(
                      color: Colors.black,
                      fontFamily: 'Lato',
                      fontWeight: FontWeight.bold,
                    ),
                    labelText: hint,
                    border: InputBorder.none
                    //  border: OutlineInputBorder(
                    //   // gapPadding: 20,
                    //   borderRadius: BorderRadius.circular(8),
                    //  ),
                    ),
              ),
              popupProps: PopupProps.menu(
                title: hint.toLabel(color: Colors.white),
                fit: FlexFit.tight,
                showSearchBox: false,
                searchFieldProps: const TextFieldProps(
                  autofocus: false,
                ),
              ),
              onChanged: onChange,
              validator: validate,
              selectedItem: controller.text,
              items: list,
            ).hMargin3,
          );
  }
}

class BTNDropDown extends StatelessWidget {
  final String hint;
  final Color? color;
  final bool isLoading;
  final TextEditingController controller;
  final List<String> list;
  final Function(String?)? onChange;
  final String? Function(String?)? validate;
  const BTNDropDown(
      {Key? key,
      required this.hint,
      this.isLoading = false,
      this.onChange,
      required this.list,
      this.color,
      this.validate,
      required this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? const MWaiting()
        : Container(
            width: 150,
            decoration: BoxDecoration(
                border: Border.all(width: 1, color: Colors.white),
                //color: color,
                borderRadius: BorderRadius.circular(8)),
            child: DropdownSearch<String>(
              dropdownDecoratorProps: DropDownDecoratorProps(
                // dropdownSearchDecoration: InputDecoration(
                //     fillColor: color,
                //     hintText: hint,
                //     hintStyle: const TextStyle(
                //       color: Colors.white,
                //       fontFamily: 'Lato',
                //       fontWeight: FontWeight.bold,
                //     ),
                //     labelText: hint,
                //    // border: InputBorder.none
                //      border: OutlineInputBorder(
                //       // gapPadding: 20,
                //       borderRadius: BorderRadius.circular(8),
                //      ),
                //     ),
                dropdownSearchDecoration: InputDecoration(
                  // hintText: hint,
                  // labelText: hint,
                  iconColor: color,
                  border: OutlineInputBorder(
                    gapPadding: 20,
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              popupProps: const PopupProps.menu(
                // title: hint.toLabel(color: Colors.white),
                // fit: FlexFit.tight,
                showSearchBox: false,
                searchFieldProps: TextFieldProps(
                  autofocus: false,
                ),
              ),
              onChanged: onChange,
              validator: validate,
              selectedItem: controller.text,
              items: list,
            ).hMargin3,
          );

    // : SizedBox(
    //     width: 200,
    //     child: DropdownButtonFormField(
    //       decoration: const InputDecoration(
    //         border: OutlineInputBorder(),
    //       ),
    //       items: list,
    //       onChanged: onChange,
    //       hint: hint,
    //       borderRadius: BorderRadius.circular(8),
    //     ),
    //   );
  }
}

class DropDownText2 extends StatelessWidget {
  final String hint;
  final String label;
  final bool isLoading;
  final Color? color;
  final bool enable;
  final dynamic controller;
  final String? Function(dynamic)? validate;
  final List<dynamic> list;
  final  Function(dynamic) onChange;

  const DropDownText2(
      {Key? key,
      required this.hint,
      required this.label,
      this.controller,
      this.enable = true,
      this.color,
      this.isLoading = false,
      this.validate,
      //  required this.onChange,
      required this.list,
      required this.onChange})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? const MWaiting()
        : Container(
            decoration: BoxDecoration(
                color: color, borderRadius: BorderRadius.circular(8)),
            child: DropdownSearch<dynamic>(
              enabled: enable,
              dropdownDecoratorProps: DropDownDecoratorProps(
                dropdownSearchDecoration: InputDecoration(
                  hintText: hint,
                  labelText: hint,
                  border: OutlineInputBorder(
                    gapPadding: 20,
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              popupProps: PopupProps.menu(
                title: hint.toLabel(),
                showSearchBox: true,
                searchFieldProps: const TextFieldProps(
                  autofocus: true,
                ),
              ),
              selectedItem: controller,
              validator: validate,
              onChanged: onChange,
              items: list,
              itemAsString: (dynamic u) => u.name,
            ),
          );
  }
}

class DropDownModel {
  final String id;
  final String name;

  DropDownModel({required this.id, required this.name});
}
