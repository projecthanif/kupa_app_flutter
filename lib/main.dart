// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:kupa_app/splash/loading_page.dart';
import 'package:kupa_app/splash/second_splash_page.dart';

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
      // home: LoadingPageWrapper(),
      home: LoadingPageWrapper(),
    );
  }
}

class LoadingPageWrapper extends StatefulWidget {
  LoadingPageWrapper({super.key});

  @override
  State<StatefulWidget> createState() => _LoadingPageWrapper();
}

class _LoadingPageWrapper extends State<LoadingPageWrapper> {
  bool _isInitialized = false;

  @override
  void initState() {
    super.initState();
    _initializeApp();
  }

  Future<void> _initializeApp() async {
    // Simulate some asynchronous initialization process
    await Future.delayed(Duration(seconds: 2));

    // Set the flag to true once initialization is complete
    setState(() {
      _isInitialized = true;
    });

    // Navigate to AuthPage after initialization
    navigateToAuthPage();
  }

  void navigateToAuthPage() {
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
