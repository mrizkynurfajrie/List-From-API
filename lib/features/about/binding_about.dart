import 'package:arkamaya_test/features/about/controller_about.dart';
import 'package:get/get.dart';

class BindingAbout implements Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(ControllerAbout());
  }
}