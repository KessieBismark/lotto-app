import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class MLabel extends StatelessWidget {
  final String title;
  final double? fontSize;
  final Color? color;
  final bool bold;
  final String? font;
  final double? space;
  final double? letterSpace;
  const MLabel(
    this.title, {
    this.fontSize,
    this.color,
    this.font,
    this.bold = false,
    Key? key,
    this.space,
    this.letterSpace,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
          wordSpacing: space,
          letterSpacing: letterSpace,
          color: color,
          fontSize: fontSize,
          fontFamily: font,
          fontWeight: bold ? FontWeight.bold : FontWeight.normal,
          overflow: TextOverflow.ellipsis),
    );
  }
}

class MAutoText extends StatelessWidget {
  final String title;
  final double? fontSize;
  final Color? color;
  final double? space;
  final double? letterSpace;
  final bool bold;
  const MAutoText(
    this.title, {
    this.fontSize,
    this.color,
    this.bold = false,
    Key? key,
    this.space,
    this.letterSpace,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoSizeText(
      title,
      maxLines: 2,
      style: TextStyle(
          wordSpacing: space,
          letterSpacing: letterSpace,
          color: color,
          fontSize: fontSize,
          overflow: TextOverflow.ellipsis,
          fontWeight: bold ? FontWeight.bold : FontWeight.normal),
    );
  }
}
