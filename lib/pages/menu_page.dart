// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_boxicons/flutter_boxicons.dart';
import 'package:kupa_app/components/appboldtxt.dart';
import 'package:kupa_app/components/card.dart';
import 'package:kupa_app/model/all_food_category.dart';
import 'package:kupa_app/model/tabs.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController =
        TabController(length: AppTabs.tabs.length, vsync: this);

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
      body: SingleChildScrollView(
        child: Column(
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
                  AppBoldTxt(
                    txt: "Special For You",
                    txtSize: 30,
                    color: Colors.green[700],
                  )
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
                  hintText: "Search your Menus",
                  prefixIcon: Icon(
                    Boxicons.bx_search,
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              child: Align(
                alignment: Alignment.centerLeft,
                child: TabBar(
                  controller: _tabController,
                  isScrollable: true,
                  tabAlignment: TabAlignment.start,
                  dividerColor: Colors.white,
                  labelColor: Colors.black,
                  unselectedLabelStyle: TextStyle(fontSize: 18),
                  unselectedLabelColor: Colors.grey.withOpacity(0.5),
                  labelStyle:
                      TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  indicatorColor: Colors.black,
                  // indicator: LineIndicator(color: Colors.black),
                  tabs: [...AppTabs.tabs],
                ),
              ),
            ),
            Container(
              // padding: EdgeInsets.all(10),
              width: double.maxFinite,
              height: 500,
              child: TabBarView(
                controller: _tabController,
                children: [
                  AppCard(
                    cardInfo: [...listTabView],
                  ),
                  Text("Hi"),
                  Text("Hi"),
                  Text("Hi"),
                  Text("Hi"),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

// class LineIndicator extends Decoration {
//   final Color color;
//   const LineIndicator({required this.color});
//   @override
//   BoxPainter createBoxPainter([VoidCallback? onChanged]) {
//     return _LinePainter(color: color);
//   }
// }

// class _LinePainter extends BoxPainter {
//   final Color color;
//   const _LinePainter({required this.color});
//   @override
//   void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
//     Offset offset = Offset(
//       configuration.size!.width / 2,
//       configuration.size!.height / 2,
//     );
//     Offset offset2 = Offset(
//       configuration.size!.width / 2,
//       configuration.size!.height / 2,
//     );
//     Paint _paint = Paint();
//     _paint.color = color;
//     canvas.drawLine(offset, offset2, _paint);
//   }
// }
