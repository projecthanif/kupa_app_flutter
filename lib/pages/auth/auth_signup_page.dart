// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:kupa_app/components/appboldtxt.dart';
import 'package:kupa_app/components/button.dart';
import 'package:kupa_app/components/text_field.dart';
import 'package:kupa_app/pages/auth/auth_login_page.dart';
import 'package:kupa_app/pages/auth/auth_verify_page.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  // final TextEditingController _nameController = TextEditingController();

  // final TextEditingController _emailController = TextEditingController();

  // final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppBoldTxt(txt: "Sign Up"),
              Text("Create account and choose favorites menu"),
              SizedBox(height: 20.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Name",
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 5.0),
                  CustomTextField(txt: "Your name"),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Email",
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
                  ),
                  SizedBox(height: 5.0),
                  CustomTextField(txt: "Your email"),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Password",
                    style:
                        TextStyle(fontWeight: FontWeight.w700, fontSize: 15.0),
                  ),
                  CustomTextField(txt: "Your password"),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              AppButton(
                txt: "Register",
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => EmailVerifyPage(),
                    ),
                  );
                },
              ),
              SizedBox(height: 15),
              SizedBox(
                height: 30.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Have an account? "),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => LoginPage()),
                        );
                      },
                      child: Text(
                        "Sign in",
                        style: TextStyle(
                          color: Colors.green[700],
                          fontSize: 15.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 190,
              ),
              Center(
                  child: Text("By clicking register, you have agree to Our")),
              Center(
                child: SizedBox(
                  height: 20,
                  child: GestureDetector(
                    onTap: () {},
                    child: Text(
                      "Terms and Conditions Policy",
                      style: TextStyle(
                        color: Colors.green[700],
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
