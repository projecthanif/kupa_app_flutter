import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    required this.txt,
    required this.onTap,
    this.color,
    this.txtColor,
  });

  final VoidCallback onTap;
  final String txt;
  final Color? color;
  final Color? txtColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 400.0,
        height: 65.0,
        decoration: BoxDecoration(
          color: (color != null) ? color : Colors.green[800],
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Text(
            txt,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: (txtColor != null) ? txtColor : Colors.white,
              fontSize: 25.0,
            ),
          ),
        ),
      ),
    );
  }
}

class AppButtonImg extends StatelessWidget {
  const AppButtonImg({
    super.key,
    required this.list,
    required this.onTap,
    this.color,
    this.txtColor,
  });

  final VoidCallback onTap;
  final List<Widget> list;
  final Color? color;
  final Color? txtColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 400.0,
        height: 65.0,
        decoration: BoxDecoration(
          color: (color != null) ? color : Colors.green[800],
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [...list],
          ),
        ),
      ),
    );
  }
}
