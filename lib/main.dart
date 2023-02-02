import 'package:flutter/material.dart';
import 'package:study_getx/all_bindings.dart';
import 'package:study_getx/pages/details/binding/detail_binding.dart';
import 'package:study_getx/pages/details/view/detail.dart';
import 'package:study_getx/pages/home/binding/home_binding.dart';
import 'package:study_getx/pages/home/view/home.dart';
import 'package:get/get.dart';

void main() {
  AllBindings.setDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      getPages: [
        GetPage(
            name: '/home', page: () => HomeScreen(), binding: HomeBinding()),
        GetPage(
            name: '/details',
            page: () => DetailScreen(),
            binding: DetailBinding()),
      ],
      home: HomeScreen(),
    );
  }
}
