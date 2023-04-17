import 'package:cashlotto_app/constants.dart';
import 'package:flutter/material.dart';

import 'text_field_container.dart';

class EmailField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  const EmailField(
      {Key? key,
      required this.hintText,
      this.icon = Icons.email,
      required this.onChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: true,
        onChanged: onChanged,
        decoration: const InputDecoration(
          hintText: 'Email',
          icon: Icon(
            Icons.email,
            color: kPrimaryColor,
          ),
          suffixIcon: Icon(
            Icons.visibility,
            color: kPrimaryColor,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
