import 'dart:developer';

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
            log("age: ${oneResult.age}");
            log("id: ${oneResult.id}");
            log("name: ${oneResult.name}");

            final allResult = await controller.getAllTest();
            for (var result in allResult) {
              log("age: ${result.age}");
              log("id: ${result.id}");
              log("name: ${result.name}");
            }
          } catch (e) {
            log(e.toString());
          }
        },
        child: const Text('Click to fetch'),
      )),
    );
  }
}
