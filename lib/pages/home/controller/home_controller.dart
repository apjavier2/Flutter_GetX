import 'package:get/get.dart';

class HomeController extends GetxController {
  //adding .obs makes a variable observable
  var count = 0.obs;

  void increment() {
    count++;
  }
}
