import 'package:cashlotto_app/constants.dart';
import 'package:flutter/material.dart';

import 'text_field_container.dart';

class RepeatPasswordField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  const RepeatPasswordField({Key? key, required this.onChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: true,
        onChanged: onChanged,
        decoration: const InputDecoration(
          hintText: 'Repeat Password',
          icon: Icon(
            Icons.lock,
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
