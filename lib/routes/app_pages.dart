import 'package:arkamaya_test/features/about/binding_about.dart';
import 'package:arkamaya_test/features/about/page_about.dart';
import 'package:arkamaya_test/features/create_users/binding_create_users.dart';
import 'package:arkamaya_test/features/create_users/page_create_users.dart';
import 'package:arkamaya_test/features/detail/binding_detail_users.dart';
import 'package:arkamaya_test/features/detail/page_detail_users.dart';
import 'package:arkamaya_test/features/main/binding_main.dart';
import 'package:arkamaya_test/features/main/page_main.dart';
import 'package:arkamaya_test/features/users/binding_users.dart';
import 'package:arkamaya_test/features/users/page_users.dart';
import 'package:arkamaya_test/routes/app_routes.dart';
import 'package:get/get.dart';

class AppPages {
  static final pages = [
    GetPage(
      name: Routes.initialPage,
      page: () => PageMain(),
      binding: BindingMain(),
    ),
    GetPage(
      name: Routes.listUsers,
      page: () => const PageUsers(),
      binding: BindingUsers(),
    ),
    GetPage(
      name: Routes.createUsers,
      page: () => const PageCreateUsers(),
      binding: BindingCreateAccount(),
    ),
    GetPage(
      name: Routes.about,
      page: () => const PageAbout(),
      binding: BindingAbout(),
    ),
    GetPage(
      name: Routes.detail,
      page: () => const PageDetailUsers(),
      binding: BindingDetailUsers(),
    ),
  ];
}
