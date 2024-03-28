import 'dart:io';

import 'package:dio/dio.dart';
import '../tools/constants.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:logger/logger.dart';

enum RequestType { get, post, put, delete }

class ApiService {
  static final Dio _dio = Dio(BaseOptions(
      baseUrl: Constants.baseLocalUrl,
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json'
      }))
    ..interceptors.add(PrettyDioLogger(
      requestHeader: true,
      requestBody: true,
      responseBody: true,
      responseHeader: false,
      error: true,
      compact: true,
      maxWidth: 90,
    ));

  static ApiCall(
    String endpoint,
    RequestType requestType, {
    String? token,
    Map<String, dynamic>? data,
  }) async {
    if (token != null) {
      _dio.options.headers.update('authorization', (value) => "New",
          ifAbsent: () => "Bearer $token");
    }

    try {
      late Response response;
      if (requestType == RequestType.get) {
        response = await _dio.get(endpoint, data: data);
      } else if (requestType == RequestType.post) {
        response = await _dio.post(endpoint, data: data);
      } else if (requestType == RequestType.put) {
        response = await _dio.put(endpoint, data: data);
      } else {
        response = await _dio.delete(endpoint, data: data);
      }
      return response;
    } on DioException catch (error) {
      Logger().e(error);
    } on SocketException catch (error) {
      Logger().e(error);
    } catch (error) {
      Logger().e(error);
    }
  }
}
