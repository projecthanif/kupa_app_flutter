import 'package:flutter/material.dart';
import 'package:kupa_app/components/address.dart';
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
                    itemCount: cartView.length,
                    itemBuilder: (BuildContext context, index) {
                      return ListView(
                        children: [
                          Row(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(40),
                                child: Image.asset(
                                  'images/${cartView[index]['imageLink']}',
                                  width: 150,
                                  height: 150,
                                ),
                              ),
                              // Row(
                              //   children: [],
                              // )
                            ],
                          ),
                        ],
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
