import 'package:flutter/material.dart';
import 'package:multiselect/multiselect.dart';

import 'waiting.dart';

class MultiSelect extends StatelessWidget {
  final Function(List<String>) onChange;
  final List<String> selected;
  final List<String> items;
  final String hint;
 // final String Function(String?)? validate;
  final bool isLoading;

  const MultiSelect(
      {Key? key,
      required this.onChange,
      required this.selected,
      required this.items,
     // this.validate,
      this.isLoading = false,
      required this.hint})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? const MWaiting()
        : DropDownMultiSelect(
            options: items,
           // validator: validate,
            selectedValues: selected,
            whenEmpty: hint,
            onChanged: onChange);
  }
}
