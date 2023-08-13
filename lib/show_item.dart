import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ShowItem extends StatelessWidget {
  List<dynamic> items;
  int index;

  ShowItem({required this.items, required this.index});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${items[0]}'),
      ),
      body: Container(
        width: Get.width,
        height: Get.height,
        child: Column(
          children: [
            SizedBox(
                width: Get.width,
                height: Get.height / 1.7,
                child: Hero(
                  tag: "${index}-photo",
                  child: Image.network(
                    "${items[1]}",
                    fit: BoxFit.cover,
                  ),
                )),
            SizedBox(
              height: 30,
            ),
            Hero(
              tag: "${index}-title",
              child: Text(
                "${items[0]}",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.red),
              ),
            )
          ],
        ),
      ),
    );
  }
}
