import 'package:flutter/material.dart';
import 'package:grocery_app/screens/order_detail/presentation/order_detail_controller.dart';

import '../../../common/base/base_view.dart';
import '../../../common_widgets/app_text.dart';
import '../../../styles/colors.dart';

class OrderDetailScreen extends BaseView<OrderDetailController> {

  @override
  Widget buildPage(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(
            color: AppColors.black
        ),
        title: AppText(
          text: "Chi tiết đơn hàng",
          color: AppColors.black,
          fontSize: 18,
          fontWeight: FontWeight.w600,
        ),
        centerTitle: true,
      ),
      body: Container(),
    );
  }
}
