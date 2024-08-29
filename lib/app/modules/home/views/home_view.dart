import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
      ),
      body: Center(
          child: TextButton(
        onPressed: () async {
          try {
            final oneResult = await controller.getOneTest();
            print("age: ${oneResult.age}");
            print("id: ${oneResult.id}");
            print("name: ${oneResult.name}");

            final allResult = await controller.getAllTest();
            for (var result in allResult) {
              print("age: ${result.age}");
              print("id: ${result.id}");
              print("name: ${result.name}");
            }
          } catch (e) {
            print(e.toString());
          }
        },
        child: const Text('Click to fetch'),
      )),
    );
  }
}
