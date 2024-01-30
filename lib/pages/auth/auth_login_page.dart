// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:kupa_app/components/appboldtxt.dart';
import 'package:kupa_app/components/button.dart';
import 'package:kupa_app/components/text_field.dart';
import 'package:kupa_app/pages/auth/auth_forget_page.dart';
import 'package:kupa_app/pages/auth/auth_signup_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    AppBoldTxt(txt: "Welcome Back"),
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
                      CustomTextField(txt: "Your email"),
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
                      CustomTextField(txt: "Your password"),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ForgetPage()),
                      );
                    },
                    child: Text(
                      "Forgot Password?",
                      style: TextStyle(
                        color: Colors.green[800],
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
                MyButton(txt: "Login", onPressed: () {}),
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
                            Image.asset(
                              'images/google.png',
                              width: 30,
                            ),
                            // Icon(Boxicons.bxl_google),
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
                              'images/apple.png',
                              width: 30,
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
          )),
    );
  }
}
