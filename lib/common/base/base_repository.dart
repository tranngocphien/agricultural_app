import 'package:dio/dio.dart';
import 'package:grocery_app/common/network/dio_provider.dart';

import '../exception/api_exception.dart';

class BaseRepository {
  final Dio dio = DioProvider.instance;

  Future<dynamic> get(String url,
      {Map<String, dynamic>? queryParameters}) async {
    try {
      final response = await dio.get(url, queryParameters: queryParameters);
      if(response.statusCode! < 300) {
        return response.data;
      } else if(response.statusCode == 401) {
        throw UnauthorizedException(message: response.data['message']);
      } else if(response.statusCode == 502) {
        throw ServerErrorException(message: response.data['message']);
      }

    } on DioException catch (error) {
      rethrow;
    } catch (error, _) {
      rethrow;
    }
  }

  Future<T> getData<T>(String url, T Function(dynamic json) convert,
      {Map<String, dynamic>? queryParameters, String? keyData}) async {
    try {
      final response = await dio.get(url, queryParameters: queryParameters);
      if(response.statusCode! < 300) {
        if(keyData != null) return convert(response.data[keyData]);
        return response.data;
      } else if(response.statusCode == 401) {
        throw UnauthorizedException(message: response.data['message']);
      } else if(response.statusCode == 502) {
        throw ServerErrorException(message: response.data['message']);
      }
      return convert(response.data);
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      throw Exception("Failed to get data");
    }
  }

  Future<List<T>> getListData<T>(String url, T Function(Map<String, dynamic> json) convert,
      {Map<String, dynamic>? queryParameters, String? keyData}) async {
    try {
      final response = await dio.get(url, queryParameters: queryParameters);
      dynamic snapshot = keyData == null ? response.data : response.data[keyData];
      if(response.statusCode! < 300) {
        return (snapshot as List).map((e) => convert(e)).toList();
      } else if(response.statusCode == 401) {
        throw UnauthorizedException(message: response.data['message']);
      } else if(response.statusCode == 502) {
        throw ServerErrorException(message: response.data['message']);
      }
      return (response.data as List).map((e) => convert(e)).toList();
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      rethrow;
    }
  }

  Future<dynamic> post(String url, {dynamic data}) async {
    try {
      final response = await dio.post(url, data: data);
      if(response.statusCode! < 300) {
        return response.data;
      } else if(response.statusCode == 401) {
        throw UnauthorizedException(message: response.data['message']);
      } else if(response.statusCode == 502) {
        throw ServerErrorException(message: response.data['message']);
      }
    } on DioException catch (error) {
      rethrow;
    } catch (error, _) {
      rethrow;
    }
  }
}
