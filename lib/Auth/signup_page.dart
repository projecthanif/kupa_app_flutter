// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:kupa_app/Auth/login_page.dart';
import 'package:kupa_app/Auth/verify_page.dart';

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
              Text(
                "Sign Up",
                style: TextStyle(
                  fontSize: 35.0,
                  fontWeight: FontWeight.w800,
                ),
              ),
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
                  TextField(
                    // controller: _nameController,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color.fromARGB(255, 247, 240, 240),
                      label: Text("Your name"),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Email",
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
                  ),
                  SizedBox(height: 5.0),
                  TextField(
                    // controller: _emailController,
                    decoration: InputDecoration(
                      label: Text("Your email"),
                      filled: true,
                      fillColor: Color.fromARGB(255, 247, 240, 240),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Password",
                    style:
                        TextStyle(fontWeight: FontWeight.w700, fontSize: 15.0),
                  ),
                  SizedBox(height: 5),
                  TextField(
                    // controller: _passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      label: Text("Your password"),
                      filled: true,
                      fillColor: Color.fromARGB(255, 247, 240, 240),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              SizedBox(
                height: 60,
                width: 400.0,
                child: FloatingActionButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => EmailVerifyPage()),
                    );
                  },
                  backgroundColor: Colors.green[700],
                  child: Text(
                    "Register",
                    style: TextStyle(color: Colors.white, fontSize: 20.0),
                  ),
                ),
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
