// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:kupa_app/components/appboldtxt.dart';
import 'package:kupa_app/components/button.dart';
import 'package:kupa_app/pages/splash/congrat_page.dart';

class EmailVerifyPage extends StatelessWidget {
  const EmailVerifyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            children: [
              AppBoldTxt(txt: "Verification Email", txtSize: 33),
              SizedBox(height: 5),
              Text("Please enter the code that just went to your email"),
              Text(
                "projecthanif@gmail.com",
                style: TextStyle(fontWeight: FontWeight.w700),
              ),
              SizedBox(height: 30),
              OtpTextField(
                numberOfFields: 4,
                fieldWidth: 65.0,
                borderColor: Color(0xFF512DA8),
                //set to true to show as box or false to show as dash
                showFieldAsBox: true,
                //runs when a code is typed in
                onCodeChanged: (String code) {
                  //handle validation or checks here
                },
                //runs when every textfield is filled
                onSubmit: (String verificationCode) {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text("Verification Code"),
                        content: Text('Code entered is $verificationCode'),
                      );
                    },
                  );
                }, // end onSubmit
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "if you didn't recieve a code? ",
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      "Resend",
                      style: TextStyle(
                        color: Colors.green[700],
                        fontSize: 15.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              MyButton(
                txt: 'Continue',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CongratPage(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
