// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:kupa_app/components/appboldtxt.dart';

class AppCounter extends StatefulWidget {
  AppCounter({super.key, required this.price});

  int price;

  @override
  State<AppCounter> createState() => _AppCounterState();
}

class _AppCounterState extends State<AppCounter> {
  int initializeNum = 1;

  void _increment() {
    setState(() {
      initializeNum++;
    });
  }

  void _decrement() {
    setState(() {
      if (initializeNum != 1) {
        initializeNum--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        GestureDetector(
          onTap: _decrement,
          child: Container(
            width: 30,
            height: 30,
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.4),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Icon(
              Icons.remove,
              color: Colors.green[700],
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 20),
          child: Text(
            "$initializeNum",
            style: const TextStyle(fontSize: 25),
          ),
        ),
        GestureDetector(
          onTap: _increment,
          child: Container(
            margin: const EdgeInsets.only(left: 20),
            width: 30,
            height: 30,
            decoration: BoxDecoration(
              color: Colors.green[700],
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Icon(
              Icons.add,
              color: Colors.white,
            ),
          ),
        ),
        const SizedBox(width: 10),
        AppBoldTxt(
          txt: "\$${widget.price * initializeNum}",
          txtSize: 20,
          color: Colors.green[700],
        ),
      ],
    );
  }
}
