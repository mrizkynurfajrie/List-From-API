import 'package:arkamaya_test/features/users/api_users.dart';
import 'package:get/get.dart';

class ControllerUsers extends GetxController {
  final ApiUsers api;
  ControllerUsers({required this.api});

  var loading = false.obs;
}
