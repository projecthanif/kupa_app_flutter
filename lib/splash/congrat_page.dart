// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:kupa_app/pages/home_page.dart';
import 'package:kupa_app/pages/pages.dart';

class CongratPage extends StatelessWidget {
  const CongratPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            Text(
              "Congratulation!",
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 37.0),
            ),
            SizedBox(height: 10.0),
            Text("your account is complete please enjoy the menu with us"),
            SizedBox(height: 50.0),
            SizedBox(
              width: 380,
              child: FloatingActionButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MainPage()),
                  );
                },
                backgroundColor: Colors.green[700],
                child: Text(
                  "Get Started",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 20.0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
