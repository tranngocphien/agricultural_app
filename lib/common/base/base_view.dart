import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grocery_app/common/base/base_controller.dart';

abstract class BaseView<Controller extends BaseController> extends GetView<Controller> {
  Widget buildLoading() {
    return Center(
      child: CupertinoActivityIndicator(),
    );
  }

  Widget buildPage(BuildContext context);

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      if(controller.loadStatus.value == LoadStatus.loading) {
        return buildLoading();
      }
      else {
        return buildPage(context);
      }
    });
  }
}