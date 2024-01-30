// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class AppBoldTxt extends StatelessWidget {
  AppBoldTxt(
      {super.key,
      required this.txt,
      this.isAlign,
      this.txtSize = 35,
      this.color});
  final String txt;
  final bool? isAlign;
  final double? txtSize;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Text(
      txt,
      style: TextStyle(
          fontSize: txtSize,
          fontWeight: FontWeight.w800,
          color: (color != null) ? color : null),
      textAlign: isAlign != null ? TextAlign.center : null,
    );
  }
}
