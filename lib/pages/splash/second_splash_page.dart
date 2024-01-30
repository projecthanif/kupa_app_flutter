// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:kupa_app/components/AppBoldTxt.dart';
import 'package:kupa_app/components/button.dart';
import 'package:kupa_app/pages/auth/auth_login_page.dart';

class AuthPage extends StatelessWidget {
  AuthPage({super.key});

  final List<String> images = ['pasta.jpg', 'pic2.png'];

  final List<String> viewBoldTxt = [
    'All your \n favorites foods',
    'Get delivery at your \n doorstep'
  ];

  final List<String> viewNomTxt = [
    'Order your favorite menu with \n our on-demand delivary',
    'Your ready order will be delivered \n quickly by our courier'
  ];

  final List<String> buttonTxt = ['Continue', 'Get Started'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        pageSnapping: true,
        itemCount: images.length,
        itemBuilder: (context, index) {
          return Container(
            height: double.maxFinite,
            width: double.maxFinite,
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
                    AppBoldTxt(txt: "Kupa", txtSize: 30)
                  ],
                ),
                Column(
                  children: [
                    Center(
                      child: Image.asset(
                        'images/${images[index]}',
                        width: 300.0,
                      ),
                    ),
                    SizedBox(height: 40),
                    AppBoldTxt(
                      txt: viewBoldTxt[index],
                      isAlign: true,
                    ),
                    SizedBox(height: 10),
                    Text(
                      viewNomTxt[index],
                      style: TextStyle(fontSize: 15.0, color: Colors.grey),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ...List.generate(
                      2,
                      (indexDots) {
                        return Container(
                          margin: EdgeInsets.only(left: 10),
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                            color: (index == indexDots)
                                ? Colors.green
                                : Colors.grey[300],
                            borderRadius: BorderRadius.circular(10),
                          ),
                        );
                      },
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      MyButton(txt: buttonTxt[index], onPressed: () {}),
                      SizedBox(
                        height: 10.0,
                      ),
                      MyButton(
                        txt: 'Sign in',
                        txtColor: Colors.green[700],
                        color: Color.fromARGB(179, 218, 221, 219),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoginPage(),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
