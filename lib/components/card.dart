import 'package:flutter/material.dart';
import 'package:kupa_app/components/appdetaildrawer.dart';

class AppCard extends StatelessWidget {
  const AppCard({super.key, required this.cardInfo, this.onTap});

  final List<Map> cardInfo;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.builder(
        itemCount: cardInfo.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.7,
        ),
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.all(5),
            // color: Colors.red,
            child: GestureDetector(
              onTap: () {
                showModalBottomSheet(
                  isScrollControlled: true,
                  context: context,
                  builder: (BuildContext context) {
                    return AppDetailsDrawer(cardInfo: cardInfo, index: index);
                  },
                );
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      'images/${cardInfo[index]['imageLink']}',
                      height: 200,
                    ),
                  ),
                  Container(
                    width: 200,
                    padding: const EdgeInsets.only(top: 5),
                    child: Text(
                      cardInfo[index]['foodName'],
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Text(
                    "\$${cardInfo[index]['price']}",
                    style: TextStyle(
                      color: Colors.green[700],
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
