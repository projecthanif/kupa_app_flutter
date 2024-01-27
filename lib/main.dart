// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:kupa_app/splash/second_splash_page.dart';
// import 'package:kupa_app/opening/first_page.dart';

void main() {
  runApp(KupaApp());
}

class KupaApp extends StatelessWidget {
  const KupaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedIconTheme: IconThemeData(
            color: Colors.green[700],
          ),
          selectedItemColor: Colors.green[700],
        ),
      ),
      // home: FirstPage(),
      home: AuthPage(),
    );
  }
}
