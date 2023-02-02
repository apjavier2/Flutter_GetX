import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:study_getx/services/api_service.dart';

import '../../home/controller/home_controller.dart';

class DetailScreen extends StatelessWidget {
  DetailScreen({super.key});

  //since this was already injected in the previous screen, we can just look for it using find method
  final apiService = Get.find<ApiService>();
  final homeController = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detail Screen"),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Get.back();
            //log(apiService.fetchTextFromApi());
          },
        ),
      ),
      body: Column(children: [
        Expanded(
            child: Center(
                child: Text('${homeController.count}',
                    style: const TextStyle(fontSize: 24))))
      ]),
    );
  }
}
