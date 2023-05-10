import 'package:arkamaya_test/framework/api.dart';

class ApiUsers {
  Future<dynamic> apiGetUsers({required String page}) async {
    var r = await Api().apiJsonGetWithPage('users', '?page=$page');

    return r;
  }
}
