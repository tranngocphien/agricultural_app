import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grocery_app/common_widgets/app_button.dart';
import 'package:grocery_app/common_widgets/app_text.dart';
import 'package:grocery_app/styles/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../common/constants.dart';
import '../common/global_state.dart';
import '../common/local/shared_pref.dart';
import '../routes/app_routes.dart';
import '../styles/text_style.dart';

class WelcomeScreen extends StatelessWidget {
  final String imagePath = "assets/images/image_welcome.png";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.primaryColor,
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 30),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(imagePath),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                SizedBox(
                  height: 100,
                ),
                Text("Hey! Welcome", style: AppStyles.s18w600.copyWith(
                  color: AppColors.primaryColor,
                  fontSize: 30
                ),),
                Spacer(),
                getButton(context),
                SizedBox(
                  height: 40,
                )
              ],
            ),
          ),
        ));
  }

  Widget getButton(BuildContext context) {
    return AppButton(
      label: "Bắt đầu thôi",
      fontWeight: FontWeight.w600,
      padding: EdgeInsets.symmetric(vertical: 25),
      onPressed: () {
        onGetStartedClicked(context);
      },
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
