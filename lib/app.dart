import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grocery_app/routes/app_pages.dart';
import 'package:grocery_app/styles/theme.dart';
import 'package:grocery_app/di/main_bindings.dart';
import 'routes/app_routes.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: themeData,
      getPages: AppPages.pages,
      initialRoute: AppRoutes.splash,
      initialBinding: MainBindings(),
    );
  }
}
