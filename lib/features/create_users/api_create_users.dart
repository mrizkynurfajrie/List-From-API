import 'package:arkamaya_test/framework/api.dart';

class ApiCreateUsers {
  Future<dynamic> apiCreateUsers(
      {required String name, required String job}) async {
    final payload = {
      'name': name,
      'job': job,
    };
    var r = await Api().apiJsonPost('users', payload);
    return r;
  }
}
