// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:kupa_app/Auth/signup_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  "Welcome Back",
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Icon(
                    Icons.waving_hand,
                    color: Colors.yellow,
                    size: 50.0,
                  ),
                ),
              ],
            ),
            Text(
              "Sign in to your account",
              style: TextStyle(color: Colors.grey, fontSize: 15.0),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Email",
                    style: TextStyle(
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      // horizontal: 10,
                      vertical: 5.0,
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        fillColor: Colors.grey,
                        label: Text(
                          "Your email",
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 2.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Password",
                    style: TextStyle(
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 10.0,
                    ),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        label: Text(
                          "Your password",
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Text(
                "Forgot Password?",
                style: TextStyle(
                  color: Colors.green[800],
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Container(
              width: 450.0,
              height: 80.0,
              // padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(0),
                ),
              ),
              child: FloatingActionButton(
                onPressed: () {},
                backgroundColor: Colors.green[800],
                child: Text(
                  "Login",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25.0,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 70.0,
              width: 400.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Dont have an account? ",
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(width: 10.0),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignUpPage(),
                        ),
                      );
                    },
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                        color: Colors.green[800],
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Divider(
                      color: Colors.grey, // Customize the color of the line
                      height: 70, // Adjust the height of the line
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                      'Or with',
                      style: TextStyle(
                        fontSize: 10,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      color: Colors.grey, // Customize the color of the line
                      height: 70, // Adjust the height of the line
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Container(
                  width: 400.0,
                  height: 70.0,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: FloatingActionButton(
                    onPressed: () {},
                    backgroundColor: Colors.grey[100],
                    elevation: 0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.circle),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text("Sign in with Google")
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Container(
                  width: 400.0,
                  height: 70.0,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: FloatingActionButton(
                    onPressed: () {},
                    backgroundColor: Colors.grey[100],
                    elevation: 0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'lib/images/rice-bowl.png',
                          width: 30.0,
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text("Sign in with Apple")
                      ],
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
