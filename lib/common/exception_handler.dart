// import 'package:dio/dio.dart';
// import 'package:grocery_app/common/exception/api_exception.dart';
//
// Exception handleException(DioException exception) {
//   switch(exception.type) {
//     case DioExceptionType.connectionTimeout:
//     case DioExceptionType.sendTimeout:
//     case DioExceptionType.receiveTimeout:
//       return ApiException(message: "Connect to server is wrong!", status:  );
//     case DioExceptionType.badCertificate:
//       // TODO: Handle this case.
//       break;
//     case DioExceptionType.badResponse:
//       // TODO: Handle this case.
//       break;
//     case DioExceptionType.cancel:
//       // TODO: Handle this case.
//       break;
//     case DioExceptionType.connectionError:
//       // TODO: Handle this case.
//       break;
//     case DioExceptionType.unknown:
//       // TODO: Handle this case.
//       break;
//   }
// }