// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:kupa_app/Auth/login_page.dart';
import 'package:kupa_app/splash/congrat_page.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'images/rice-bowl.png',
                  width: 30.0,
                ),
                Text(
                  "Kupa",
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.w700,
                  ),
                )
              ],
            ),
            Center(
              child: Image.asset(
                'images/pasta.jpg',
                width: 300.0,
              ),
            ),
            Column(
              children: [
                Text(
                  "All your \n favorites foods",
                  style: TextStyle(
                    fontSize: 35.0,
                    fontWeight: FontWeight.w800,
                  ),
                  textAlign: TextAlign.center,
                ),
                Text(
                  "Order your favorite menu with \n our on-demand delivary",
                  style: TextStyle(
                    fontSize: 15.0,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            Column(
              children: [
                SizedBox(
                  width: 350.0,
                  height: 70.0,
                  child: FloatingActionButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CongratPage(),
                        ),
                      );
                    },
                    backgroundColor: Colors.green[800],
                    child: Text(
                      "Continue",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                SizedBox(
                  width: 350.0,
                  height: 70.0,
                  child: FloatingActionButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginPage(),
                        ),
                      );
                    },
                    backgroundColor: Color.fromARGB(179, 218, 221, 219),
                    elevation: 0,
                    child: Text(
                      "Sign in",
                      style: TextStyle(
                        color: Colors.green[800],
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
