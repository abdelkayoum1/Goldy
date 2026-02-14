import 'package:dio/dio.dart';

class ApiService {
  late Dio dio;

  ApiService(this.dio) {
    dio = Dio(
      BaseOptions(
        baseUrl: 'https://api.gold-api.com/price/',
        receiveDataWhenStatusError: true,
        connectTimeout: Duration(seconds: 20),
        receiveTimeout: Duration(seconds: 20),
        headers: {"Accept": "application/json", "User-Agent": "Mozilla/5.0"},
      ),
    );
  }

  final baseurl = 'https://api.gold-api.com/price/';
  Future<Map<String, dynamic>> get({required String point}) async {
    var reponse = await dio.get('$baseurl$point');

    return reponse.data;
  }
}
