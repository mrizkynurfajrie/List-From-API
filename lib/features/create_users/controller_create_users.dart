import 'dart:developer';

import 'package:arkamaya_test/features/create_users/api_create_users.dart';
import 'package:arkamaya_test/response/new_user.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ControllerCreateUsers extends GetxController {
  final ApiCreateUsers api;
  ControllerCreateUsers({required this.api});

  @override
  void onClose() {
    // TODO: implement onClose
    textName.dispose();
    textJob.dispose();
    super.onClose();
  }

  var loading = false.obs;
  var createdStatus = false.obs;
  var textName = TextEditingController();
  var textJob = TextEditingController();
  var newUser = NewUser().obs;

  createUsers() async {
    loading.value = true;
    try {
      var r = await api.apiCreateUsers(
        name: textName.text,
        job: textJob.text,
      );
      log('post data : $r');
      if (r["name"] != null) {
        newUser.value = NewUser.fromJson(r);
        createdStatus.value = true;
        loading.value = false;
      }
    } catch (e) {
      loading.value = false;
      print(e.toString());
    }
  }
}
