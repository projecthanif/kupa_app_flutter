import 'package:flutter/material.dart';

class AppAddress extends StatelessWidget {
  const AppAddress({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Container(
        height: 140,
        width: 400,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 3, 98, 6),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Delivery to Home",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios_sharp,
                    color: Colors.white,
                    size: 20,
                  )
                ],
              ),
              const SizedBox(height: 8),
              const Text(
                "Ultimate Street no.14, Karakora Town",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 8),
              Container(
                height: 30,
                width: 80,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    "2.4 km",
                    style: TextStyle(
                      color: Colors.green[700],
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
