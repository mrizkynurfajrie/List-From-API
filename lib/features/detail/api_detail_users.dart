import 'package:arkamaya_test/framework/api.dart';

class ApiDetailUsers {
  Future<dynamic> apiGetDetailUsers({required int id}) async {
    var r = await Api().apiJsonGet('users/$id');

    return r;
  }
}
