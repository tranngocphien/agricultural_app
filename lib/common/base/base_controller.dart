import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import '../exception/api_exception.dart';

abstract class BaseViewModel extends GetxController {
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
      onSuccess?.call(response);
    } on UnauthorizedApiException catch (exception) {
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
  
  void showLoading() {
    Get.dialog(
      Center(
        child: Container(
          width: 100,
          height: 100,
          child: Lottie.asset('assets/json/loading.json'),
        ),
      ),
      barrierDismissible: false,
    );
  }

  void hideLoading() {
    if(Get.isDialogOpen == true) {
      Get.back();
    }
  }
}

enum LoadStatus {
  intl,
  loading,
  success,
}