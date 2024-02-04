import 'package:flutter/material.dart';

class AppCounter extends StatefulWidget {
  const AppCounter({super.key});

  @override
  State<AppCounter> createState() => _AppCounterState();
}

class _AppCounterState extends State<AppCounter> {
  int _initializeNum = 1;

  void _increment() {
    setState(() {
      _initializeNum++;
    });
  }

  void _decrement() {
    setState(() {
      if (_initializeNum != 1) {
        _initializeNum--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
        const SizedBox(height: 70),
        Container(
          margin: const EdgeInsets.only(left: 20),
          child: Text(
            "$_initializeNum",
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
      ],
    );
  }
}
