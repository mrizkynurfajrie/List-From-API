import 'package:arkamaya_test/features/create_users/api_create_users.dart';
import 'package:arkamaya_test/features/create_users/controller_create_users.dart';
import 'package:get/get.dart';

class BindingCreateAccount implements Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(ControllerCreateUsers(api: ApiCreateUsers()));
  }
}
