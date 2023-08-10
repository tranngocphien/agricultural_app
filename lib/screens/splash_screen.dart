import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grocery_app/styles/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../common/constants.dart';
import '../common/global_state.dart';
import '../common/local/shared_pref.dart';
import '../routes/app_routes.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    const delay = const Duration(seconds: 3);
    Future.delayed(delay, () => onTimerFinished());
  }

  void onTimerFinished() {
    onGetStartedClicked(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Center(
        child: Image.asset("assets/logo/icon.png"),
      ),
    );
  }

  void onGetStartedClicked(BuildContext context) async {
    final LocalStorage localStorage = Get.find();
    bool isSupplier = await localStorage.get<bool?>(SharedPrefKey.isSupplier) ?? false;
    String? tokenExpired = await localStorage.get<String?>(SharedPrefKey.tokenExpired);
    if(tokenExpired == null) {
      GlobalState.isLogin.value = false;
    }
    else {
      DateTime expired = DateTime.fromMicrosecondsSinceEpoch(int.parse(tokenExpired));
      if(expired.isBefore(DateTime.now())) {
        GlobalState.isLogin.value = false;
      }
      else {
        GlobalState.isLogin.value = true;
      }
    }
    if(isSupplier) {
      Get.toNamed(AppRoutes.mainSupplier);
    }
    else {
      Get.toNamed(AppRoutes.main);
    }
  }
}
