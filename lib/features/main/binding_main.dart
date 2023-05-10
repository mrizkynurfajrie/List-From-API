import 'package:arkamaya_test/features/about/controller_about.dart';
import 'package:arkamaya_test/features/create_users/api_create_users.dart';
import 'package:arkamaya_test/features/create_users/controller_create_users.dart';
import 'package:arkamaya_test/features/users/api_users.dart';
import 'package:arkamaya_test/features/users/controller_users.dart';
import 'package:get/get.dart';

class BindingMain implements Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(ControllerUsers(api: ApiUsers()));
    Get.put(ControllerCreateUsers(api: ApiCreateUsers()));
    Get.put(ControllerAbout());
  }
}
