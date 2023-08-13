import 'package:flutter/material.dart';
import 'package:flutter_dismissible/controller.dart';
import 'package:flutter_dismissible/show_item.dart';
import 'package:get/get.dart';

class ItemLists extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Controller controller = Get.put(Controller());

    return ListView.builder(
        itemCount: controller.items.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Get.to(ShowItem(items: controller.items[index], index: index),
                  duration: Duration(milliseconds: 500),
                  transition: Transition.fade); // this is perfect
            },
            child: ListTile(
              contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 8),
              leading: SizedBox(
                  width: Get.width / 4,
                  height: Get.width / 4,
                  child: Hero(
                    tag: "${index}-photo",
                    child: Image.network(
                      "${controller.items[index][1]}",
                      fit: BoxFit.cover,
                    ),
                  )),
              title: Hero(
                  tag: "${index}-title",
                  child: Text('${controller.items[index][0]}')),
            ),
          );
        });
  }
}
