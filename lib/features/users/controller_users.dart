import 'dart:developer';

import 'package:arkamaya_test/features/users/api_users.dart';
import 'package:arkamaya_test/response/users.dart';
import 'package:get/get.dart';

class ControllerUsers extends GetxController {
  final ApiUsers api;
  ControllerUsers({required this.api});

  var loading = false.obs;
  var listUsers = List<Users>.empty().obs;
  var pages = 1.obs;
  var totalPages = 0.obs;

  @override
  void onInit() async {
    await getUsers();
    super.onInit();
  }

  getUsers() async {
    loading.value = true;
    try {
      var r = await api.apiGetUsers(page: pages.value.toString());
      log('data users : $r');
      if (r["data"] != null) {
        totalPages.value = r["total_pages"];
        var data = r["data"];
        var listData =
            (data as List).map((data) => Users.fromJson(data)).toList();
        if (listData.isNotEmpty) {
          listUsers.clear();
          listUsers.addAll(listData);
        }
        loading.value = false;
      }
    } catch (e) {
      loading.value = false;
      print(e.toString());
    }
  }
}
