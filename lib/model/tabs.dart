import 'package:flutter/material.dart';

class AppTabs extends Tab {
  const AppTabs({super.key});

  static List<Tab> tabs = const [
    Tab(text: "All"),
    Tab(text: "Featured"),
    Tab(text: "Top of the Week"),
    Tab(text: "Soup"),
    Tab(text: "Sauce"),
  ];
}
