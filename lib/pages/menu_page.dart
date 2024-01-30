// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_boxicons/flutter_boxicons.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  // int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Text(""),
        title: Center(
          child: Text(
            "Menu",
            style: TextStyle(fontWeight: FontWeight.w800),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Boxicons.bx_bell),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Our Food",
                  style: TextStyle(color: Colors.grey),
                ),
                Text(
                  "Special For You",
                  style: TextStyle(
                    color: Colors.green[700],
                    fontSize: 27,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(12),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                hintText: "Hello",
                prefixIcon: Icon(
                  Boxicons.bx_search,
                  color: Colors.grey,
                ),
              ),
            ),
          ),
          // NavigationBar(
          //   destinations: [
          //     Text("All"),
          //     Text("All"),
          //   ],
          //   selectedIndex: _selectedIndex,
          //   onDestinationSelected: (value) => _selectedIndex,
          //   height: 30,
          // ),
        ],
      ),
    );
  }
}
