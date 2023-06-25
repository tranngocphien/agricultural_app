import 'package:get/get.dart';
import '../exception/api_exception.dart';

abstract class BaseController extends GetxController {
  final loadStatus = LoadStatus.intl.obs;

  Future<void> networkCall<T>(
        Future<T> future, {
        Function(Exception exception)? onError,
        Function(T response)? onSuccess,
        Function? onStart,
        Function? onComplete,
      }) async {
    Exception? _exception;

    try {
      onStart?.call();
      T response = await future;
      if (onSuccess != null) onSuccess(response);
    } on UnauthorizedException catch (exception) {
      _exception = exception;
    } on ServerErrorException catch (exception) {
      _exception = exception;
    } on Exception catch (exception) {
      _exception = exception;
    } finally {
      if (onComplete != null) onComplete();
    }
    if (onError != null && _exception != null) onError(_exception);
  }
}

enum LoadStatus {
  intl,
  loading,
  success,
}