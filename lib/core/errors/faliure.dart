import 'package:dio/dio.dart';

abstract class Faliure {
  final String errMessage;

  Faliure(this.errMessage);
}

class ServerFaliure extends Faliure {
  ServerFaliure(super.errMessage);
  factory ServerFaliure.fromDioErr(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFaliure('Connection time out with the server');
      case DioExceptionType.cancel:
        return ServerFaliure('Request to server was cancled');
      case DioExceptionType.connectionError:
        return ServerFaliure('Connection time out with the server');
      case DioExceptionType.sendTimeout:
        return ServerFaliure(
            'send time out with the server, please try again later!');
      case DioExceptionType.receiveTimeout:
        return ServerFaliure(
            'recieve time out with the server, please try again later!');
      case DioExceptionType.badResponse:
        return ServerFaliure.fromResponce(
            dioException.response!.statusCode!, dioException.response!.data);
      case DioExceptionType.unknown:
        if (dioException.message!.contains('SocketException')) {
          return ServerFaliure('No Internet Connection');
        }
        return ServerFaliure('Un Expected Error please try again later');
      default:
        return ServerFaliure(
            'Oops there was an error, please try again later!');
    }
  }
  factory ServerFaliure.fromResponce(int statusCode, dynamic responce) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFaliure(responce['error']['message']);
    } else if (statusCode == 404) {
      return ServerFaliure('Your request not found, please try again later!');
    } else if (statusCode == 500) {
      return ServerFaliure('Internal server proplem, please try again later!');
    } else {
      return ServerFaliure('Oops there was an error, please try again later!');
    }
  }
}
