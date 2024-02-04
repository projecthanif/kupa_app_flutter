import 'package:flutter/material.dart';
import 'package:kupa_app/components/address.dart';
import 'package:kupa_app/components/appboldtxt.dart';
import 'package:kupa_app/components/counter.dart';
import 'package:kupa_app/model/all_cart.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Text(""),
        title: const Center(
          child: Text(
            "My Cart",
            style: TextStyle(fontWeight: FontWeight.w800),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const AppAddress(),
              const SizedBox(height: 10),
              Container(
                margin: const EdgeInsets.only(left: 10, right: 10),
                child: const Text(
                  "Your Orders (3)",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Container(
                margin: const EdgeInsets.only(left: 10, right: 10),
                height: double.maxFinite,
                child: ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: cartView.length,
                  itemBuilder: (BuildContext context, index) {
                    return Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(40),
                              child: Image.asset(
                                'images/${cartView[index]['imageLink']}',
                                width: 150,
                                height: 150,
                              ),
                            ),
                            Container(
                              height: 120,
                              margin: const EdgeInsets.only(top: 15),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  AppBoldTxt(
                                    txt: "${cartView[index]['foodName']}",
                                    txtSize: 15,
                                  ),
                                  SizedBox(
                                    width: 200,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        const AppCounter(),
                                        AppBoldTxt(
                                          txt: "\$${cartView[index]['price']}",
                                          txtSize: 20,
                                          color: Colors.green[700],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        const Divider(
                          color: Colors.grey,
                          thickness: 1,
                        ),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
