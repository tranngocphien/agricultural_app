import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:grocery_app/common/constants.dart';
import 'package:grocery_app/common/local/shared_pref.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioProvider {
  DioProvider._();

  static final String baseUrl = "https://agri-api.estatekey.click/";

  static Dio? _instance;

  static const int _maxLineWidth = 90;
  static final _prettyDioLogger = PrettyDioLogger(
      requestHeader: true,
      requestBody: true,
      responseBody: true,
      responseHeader: false,
      error: true,
      compact: true,
      maxWidth: _maxLineWidth);


  static Dio get instance {
    if(_instance == null) {
      final BaseOptions options = BaseOptions(
        baseUrl: baseUrl,
        receiveDataWhenStatusError: true,
        connectTimeout: Duration(minutes: 1),
        receiveTimeout: Duration(minutes: 1),
        headers: {"accept": "application/json"},
      );
      _instance = Dio(options);
      _instance?.options.headers['content-Type'] = 'Application/json';
      _instance?.interceptors.addAll(
        [
          _prettyDioLogger
        ],
      );
    }
    return _instance!;
  }

  static void getTokenStorage() async {
    final localStorage = Get.find<LocalStorage>();
    String? accessToken = await localStorage.get<String?>(SharedPrefKey.accessToken);
    if(accessToken != null) {
      addToken(accessToken);
    }
  }

  static void addToken(String token) {
    _instance?.options.headers['Authorization'] = 'Bearer $token';
  }

  static void removeToken() {
    _instance?.options.headers.remove('Authorization');
  }

}