import 'package:arkamaya_test/features/detail/api_detail_users.dart';
import 'package:arkamaya_test/features/detail/controller_detail_users.dart';
import 'package:get/get.dart';

class BindingDetailUsers implements Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(ControllerDetailUsers(api: ApiDetailUsers()));
  }
}