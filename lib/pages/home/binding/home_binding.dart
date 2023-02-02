import 'package:get/get.dart';
import 'package:study_getx/pages/home/controller/home_controller.dart';
import 'package:study_getx/services/api_service.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(ApiService());
    Get.put(HomeController());
  }
}
