import 'package:arkamaya_test/features/users/api_users.dart';
import 'package:arkamaya_test/features/users/controller_users.dart';
import 'package:get/get.dart';

class BindingUsers implements Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(ControllerUsers(api: ApiUsers()));
  }
}