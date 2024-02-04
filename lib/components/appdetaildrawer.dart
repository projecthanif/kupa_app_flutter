import 'package:flutter/material.dart';
import 'package:kupa_app/components/appboldtxt.dart';
import 'package:kupa_app/model/all_sauce.dart';

class AppDetailsDrawer extends StatefulWidget {
  const AppDetailsDrawer({
    super.key,
    required this.cardInfo,
    required this.index,
  });
  final List cardInfo;
  final int index;

  @override
  State<AppDetailsDrawer> createState() => _AppDetailsDrawerState();
}

class _AppDetailsDrawerState extends State<AppDetailsDrawer> {
  int _initializeNum = 1;

  void _increment() {
    setState(() {
      _initializeNum++;
    });
  }

  void _decrement() {
    setState(() {
      if (_initializeNum != 1) {
        _initializeNum--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: 750,
        margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'images/${widget.cardInfo[widget.index]['imageLink']}',
            ),
            const SizedBox(height: 20),
            AppBoldTxt(
              txt: widget.cardInfo[widget.index]['foodName'],
              txtSize: 25,
            ),
            SizedBox(
              width: 250,
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: _decrement,
                    child: Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.4),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Icon(
                        Icons.remove,
                        color: Colors.green[700],
                      ),
                    ),
                  ),
                  const SizedBox(height: 70),
                  Container(
                    margin: const EdgeInsets.only(left: 20),
                    child: Text(
                      "$_initializeNum",
                      style: const TextStyle(fontSize: 25),
                    ),
                  ),
                  GestureDetector(
                    onTap: _increment,
                    child: Container(
                      margin: const EdgeInsets.only(left: 20),
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        color: Colors.green[700],
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 20),
                    child: Text(
                      "\$${(widget.cardInfo[widget.index]["price"]) * _initializeNum}",
                      style: TextStyle(
                        color: Colors.green[700],
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Divider(
              color: Colors.grey,
              thickness: 1,
            ),
            const SizedBox(height: 10),
            const Text(
              "Suace",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Divider(
              color: Colors.grey,
              thickness: 1,
            ),
            const SizedBox(height: 10),
            Container(
              height: double.maxFinite,
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: ListView.builder(
                shrinkWrap: true, // Add this line
                physics: const NeverScrollableScrollPhysics(), // Add this line
                itemCount: sauces.length,
                itemBuilder: (BuildContext context, index) {
                  return Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            child: Row(
                              children: [
                                Checkbox(
                                  value: true,
                                  onChanged: (context) {},
                                  activeColor: Colors.green[700],
                                ),
                                const Text(
                                  "Teriyaki",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Text(
                            "\$200",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      const Divider(
                        color: Colors.grey,
                      ),
                    ],
                  );
                },
              ),
            ),
            Container(
              height: double.maxFinite,
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: ListView.builder(
                itemCount: sauces.length,
                itemBuilder: (BuildContext context, index) {
                  return Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            child: Row(
                              children: [
                                Checkbox(
                                  value: true,
                                  onChanged: (context) {},
                                  activeColor: Colors.green[700],
                                ),
                                const Text(
                                  "Teriyaki",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Text(
                            "\$200",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      const Divider(
                        color: Colors.grey,
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
