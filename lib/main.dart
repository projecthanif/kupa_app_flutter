// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
// import 'package:kupa_app/opening/first_page.dart';
import 'package:kupa_app/opening/second_page.dart';

void main() {
  runApp(KupaApp());
}

class KupaApp extends StatelessWidget {
  const KupaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: FirstPage(),
      home: AuthPage(),
    );
  }
}
