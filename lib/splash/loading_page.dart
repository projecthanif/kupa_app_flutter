// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class LoadingPage extends StatelessWidget {
  const LoadingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.green[800],
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'images/bowl.png',
                width: 90.0,
              ),
              Text(
                "Kupa",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 60.0,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ],
          ),
        ));
  }
}
