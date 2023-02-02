import 'package:study_getx/pages/details/binding/detail_binding.dart';
import 'package:study_getx/pages/home/binding/home_binding.dart';

class AllBindings {
  static setDependencies() {
    HomeBinding().dependencies();
    DetailBinding().dependencies();
  }
}
