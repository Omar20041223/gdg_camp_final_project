import 'package:dio/dio.dart';

class ApiService {
  final Dio dio;

  ApiService(this.dio);

  Future<dynamic> get(
      {required String endpoint, Map<String, dynamic>? queryParameters}) async {
    final response = await dio.get(endpoint, queryParameters: queryParameters);
    return response.data;
  }

  Future<dynamic> post({required String endpoint, dynamic data}) async {
    final response = await dio.post(endpoint, data: data);
    return response.data;
  }


    Future<Map<String, dynamic>> postWithRaw({
      required String endPoint,
      required Map<String, dynamic> rawData,
    }) async {
        var response = await dio.post(
          endPoint,
          data: rawData,
          options: Options(
            headers: {
              'Content-Type': 'application/json',
            },
          ),
        );
        return response.data;
    }





}
