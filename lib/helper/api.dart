import 'package:dio/dio.dart';

class Api {
  final dio = Dio();

  Future<List<dynamic>> get({required String url}) async {
    Response response = await dio.get(url);
    if (response.statusCode == 200) {
      List<dynamic> data = response.data;

      return data;
    } else {
      throw Exception(
          'there is an errorin status code: ${response.statusCode}');
    }
  }

  Future<dynamic> post({
    required String url,
    dynamic data,
    String? token,
  }) async {
    Map<String, String> headers = {};
    if (token != null) {
      headers.addAll({'Authorization': 'Bearer $token'});
    }
    Response response = await dio.post(url, data: data, queryParameters: headers);
    if (response.statusCode == 200) {
      return response.data;
    } else {
      throw Exception(
          'there is a poblem with status code ${response.statusCode}, with body${response.data}');
    }
  }

  
  Future<dynamic> put({
    required String url,
    dynamic data,
    String? token,
  }) async {
    Map<String, String> headers = {};
    if (token != null) {
      headers.addAll({'Authorization': 'Bearer $token'});
    }
    Response response = await dio.put(url, data: data, queryParameters: headers);
    if (response.statusCode == 200) {
      return response.data;
    } else {
      throw Exception(
          'there is a poblem with status code ${response.statusCode}, with body${response.data}');
    }
  }
}
