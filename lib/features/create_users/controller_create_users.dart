import 'package:arkamaya_test/features/create_users/api_create_users.dart';
import 'package:get/get.dart';

class ControllerCreateUsers extends GetxController {
  final ApiCreateUsers api;
  ControllerCreateUsers({required this.api});

  var loading = false.obs;
}