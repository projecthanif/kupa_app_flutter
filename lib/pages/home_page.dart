// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import "package:flutter/material.dart";
import "package:flutter_boxicons/flutter_boxicons.dart";
import "package:kupa_app/components/address.dart";

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Text(""),
        title: Center(
          child: Text(
            "Home",
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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextField(
                decoration: InputDecoration(
                  label: Row(
                    children: [
                      Icon(Boxicons.bx_search),
                      SizedBox(width: 10),
                      Text(
                        "Search on Kupa",
                        style: TextStyle(color: Colors.grey),
                      )
                    ],
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            AppAddress(),
            Padding(
              padding: const EdgeInsets.all(12),
              child: Container(
                // height: 140,
                width: 400,
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Colors.green[100],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Chicken Teriyaki",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 25.0,
                            ),
                          ),
                          Text(
                            "Discount 25%",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(height: 20),
                          SizedBox(
                            width: 150,
                            height: 50,
                            child: FloatingActionButton(
                              backgroundColor: Colors.green[800],
                              onPressed: () {},
                              child: Text(
                                "Order Now",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                        child: Image.asset(
                          'images/street-food.png',
                          height: 110,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: Text(
                "Top of Week",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
            ),
            SizedBox(
              height: 210,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  SizedBox(width: 15),
                  SizedBox(
                    width: 150,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              'images/pic3.png',
                              height: 150,
                            ),
                          ),
                        ),
                        SizedBox(height: 10.0),
                        Text(
                          "HongHong Food",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        Text(
                          "\$200",
                          style: TextStyle(
                            color: Colors.green[700],
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 10),
                  SizedBox(
                    width: 150,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            'images/pic.png',
                            height: 150,
                          ),
                        ),
                        SizedBox(height: 10.0),
                        Text(
                          "HongHong Food",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        Text(
                          "\$200",
                          style: TextStyle(
                            color: Colors.green[700],
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 10),
                  SizedBox(
                    width: 150,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            'images/street-food.png',
                            height: 150,
                          ),
                        ),
                        SizedBox(height: 10.0),
                        Text(
                          "HongHong Food",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        Text(
                          "\$200",
                          style: TextStyle(
                            color: Colors.green[700],
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 150,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              'images/pic3.png',
                              height: 150,
                            ),
                          ),
                        ),
                        SizedBox(height: 10.0),
                        Text(
                          "HongHong Food",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        Text(
                          "\$200",
                          style: TextStyle(
                            color: Colors.green[700],
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 10),
                  SizedBox(
                    width: 150,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            'images/pic.png',
                            height: 150,
                          ),
                        ),
                        SizedBox(height: 10.0),
                        Text(
                          "HongHong Food",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        Text(
                          "\$200",
                          style: TextStyle(
                            color: Colors.green[700],
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 10),
                  SizedBox(
                    width: 150,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            'images/street-food.png',
                            height: 150,
                          ),
                        ),
                        SizedBox(height: 10.0),
                        Text(
                          "HongHong Food",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        Text(
                          "\$200",
                          style: TextStyle(
                            color: Colors.green[700],
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
