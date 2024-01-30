// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:kupa_app/pages/splash/loading_page.dart';
import 'package:kupa_app/pages/splash/second_splash_page.dart';

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
      // home: AuthPage(),
      home: LoadingPageWrapper(),
    );
  }
}

class LoadingPageWrapper extends StatefulWidget {
  const LoadingPageWrapper({super.key});

  @override
  State<LoadingPageWrapper> createState() => _LoadingPageWrapper();
}

class _LoadingPageWrapper extends State<LoadingPageWrapper> {
  bool _isInitialized = false;
  @override
  void initState() {
    super.initState();
    _initializeApp();
  }

  Future<void> _initializeApp() async {
    await Future.delayed(Duration(seconds: 3));

    setState(() {
      _isInitialized = true;
    });
    _redirectNavigation();
  }

  void _redirectNavigation() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => AuthPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _isInitialized ? AuthPage() : LoadingPage();
  }
}
