import 'package:arkamaya_test/features/main/controller_main.dart';
import 'package:get/get.dart';

class ControllerBind implements Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(ControllerMain());
  }
}
