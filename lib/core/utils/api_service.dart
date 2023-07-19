import 'package:dio/dio.dart';

class ApiService {
  final _baseUrl = 'https://www.googleapis.com/books/v1';
  final Dio _dio;

  ApiService(this._dio);

  Future<Map<String, dynamic>> get({required String endPiont}) async {
    var responce = await _dio.get('$_baseUrl$endPiont');
    return responce.data;
  }
}
