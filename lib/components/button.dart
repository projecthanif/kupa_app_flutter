import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton({
    super.key,
    required this.txt,
    required this.onPressed,
    this.color,
    this.txtColor,
  });

  final VoidCallback onPressed;
  final String txt;
  final Color? color;
  final Color? txtColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400.0,
      height: 65.0,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(0),
        ),
      ),
      child: FloatingActionButton(
        elevation: 0,
        onPressed: onPressed,
        backgroundColor: (color != null) ? color : Colors.green[800],
        child: Text(
          txt,
          style: TextStyle(
            color: (txtColor != null) ? txtColor : Colors.white,
            fontSize: 25.0,
          ),
        ),
      ),
    );
  }
}
