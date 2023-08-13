import 'package:flutter/material.dart';
import 'package:flutter_dismissible/item_lists.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
          appBar: AppBar(
            title: Text(
              'Code By Chance',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            elevation: 5,
            backgroundColor: const Color.fromARGB(255, 212, 101, 231),
          ),
          body: SafeArea(child: ItemLists())),
    );
  }
}
