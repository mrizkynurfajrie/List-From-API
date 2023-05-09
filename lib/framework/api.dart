import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;

class Api {
  String baseUrl = 'https://reqres.in/';

  Future<dynamic> apiJsonGet(
    String url,
  ) async {
    Map<String, String> headers = {
      'content-Type': 'application/json',
    };
    log('headers : $headers');
    log('url : $url');

    http.Response r = await http.get(
      Uri.parse(baseUrl + url),
      headers: headers,
    );
    var data = json.decode(r.body);
    log('status code : ${r.statusCode}');

    return data;
  }

  Future<dynamic> apiJsonPost(
    String url,
    Map<String, dynamic> params,
  ) async {
    Map<String, String> headers = {
      'content-Type': 'application/json',
    };
    log('headers : $headers');
    log('url : $url');

    var r = await http.post(
      Uri.parse(baseUrl + url),
      headers: headers,
      body: jsonEncode(params),
      encoding: Encoding.getByName("utf-8"),
    );
    var data = jsonDecode(r.body);
    log('status code : ${r.statusCode}');

    return data;
  }
}
