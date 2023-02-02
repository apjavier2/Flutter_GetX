import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:study_getx/pages/home/controller/home_controller.dart';
import 'package:study_getx/services/api_service.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  /*Line 12 - 17 will be added in the home_binding file */
  //Dependency injection
  //This creates the api service inside the GET package, that's why it can be accessed by the children
  // final apiService = Get.put(ApiService());

  // //state
  // final homeController = Get.put(HomeController());

  //Binding
  final apiService = Get.find<ApiService>();
  final homeController = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Screen"),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //The text should be wrapped by Obx since it is being observed
            Obx(() => Text("${homeController.count}",
                style: const TextStyle(fontSize: 24))),
            ElevatedButton(
              onPressed: () {
                //Get.toNamed("/details");
                //--- Disables the back button. Doesn't allow user to go back (Ex. Splash Screen)
                //Get.off(() => const DetailScreen());

                //Dependency Injection
                //log(apiService.fetchTextFromApi());

                //altering the state
                homeController.increment();
              },
              style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
              child: const Text('Increment Counter',
                  style: TextStyle(color: Colors.white)),
            ),
            ElevatedButton(
              onPressed: () {
                //utils
                // Get.defaultDialog(
                //     title: 'This is a dialog',
                //     backgroundColor: Colors.blue,
                //     middleText: 'Sample dialog');

                Get.snackbar('Title', 'This is getx snackbar',
                    backgroundColor: Colors.amber,
                    snackPosition: SnackPosition.BOTTOM);

                //Get.toNamed("/details");
              },
              style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
              child: const Text('Go to detail',
                  style: TextStyle(color: Colors.white)),
            )
          ],
        ),
      ),
    );
  }
}
