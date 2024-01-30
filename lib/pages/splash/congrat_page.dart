// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:kupa_app/components/appboldtxt.dart';
import 'package:kupa_app/components/button.dart';
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
            AppBoldTxt(txt: "Congratulation!"),
            SizedBox(height: 10.0),
            Text("your account is complete please enjoy the menu with us"),
            SizedBox(height: 50.0),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: MyButton(
                txt: 'Get Started',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MainPage()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
