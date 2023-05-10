import 'dart:developer';

import 'package:arkamaya_test/features/detail/api_detail_users.dart';
import 'package:arkamaya_test/response/detail_user.dart';
import 'package:get/get.dart';

class ControllerDetailUsers extends GetxController {
  final ApiDetailUsers api;
  ControllerDetailUsers({required this.api});

  var loading = false.obs;
  var getId = 0.obs;
  var detailUsers = DetailUser().obs;
  var support = ''.obs;

  @override
  void onInit() async {
    // TODO: implement onInit
    getId.value = Get.arguments;
    await getDetailUsers();
    super.onInit();
  }

  getDetailUsers() async {
    loading.value = true;
    try {
      var r = await api.apiGetDetailUsers(id: getId.value);
      log('data : $r');
      if (r["data"] != null) {
        var data = r["data"];
        var supportText = r["support"]["text"];
        support.value = supportText;
        detailUsers.value = DetailUser.fromJson(data);
        loading.value = false;
      }
    } catch (e) {
      loading.value = false;
      print(e.toString());
    }
  }
}
