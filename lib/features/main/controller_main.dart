import 'package:arkamaya_test/features/users/page_users.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ControllerMain extends GetxController {
  late PageController pageController;
  var currentPage = 0.obs;
  final List<Widget> pages = [
    const PageUsers(),
  ];

  void changePage(index) => currentPage.value = index;

  @override
  void onInit() {
    super.onInit();
    pageController = PageController(initialPage: currentPage.value);
  }

  @override
  void onReady() async {
    super.onReady();
    var pageArg = Get.arguments;
    if (pageArg != null) {
      changePage(pageArg);
      pageController.jumpToPage(pageArg);
    }
  }
}