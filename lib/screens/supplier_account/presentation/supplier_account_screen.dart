import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:grocery_app/screens/supplier_account/presentation/supplier_account_controller.dart';

import '../../../common/base/base_view.dart';
import '../../../common_widgets/app_text.dart';
import '../../../routes/app_routes.dart';
import '../../../styles/colors.dart';

class SupplierAccountScreen extends BaseView<SupplierAccountController> {

  @override
  Widget buildPage(BuildContext context) {
    return SafeArea(
      child: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 32,
              ),
              Obx(() =>
              controller.isLogin.value ? Container(
                child: Column(
                  children: [
                    Container(
                      height: 150,
                      width: 150,
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: Image.asset(
                        "assets/icons/icon_logo.png",
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                    SizedBox(height: 16,),
                    Text(
                      controller.accountInfo.value?.username ?? "",
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.w600,
                      ),
                    )
                  ],
                ),
              ) : GestureDetector(
                onTap: () {
                  Get.toNamed(AppRoutes.signIn);
                },
                child: Row(
                  children: [
                    SizedBox(width: 16,),
                    Image.asset(
                      "assets/icons/icon_logo.png",
                      width: 60,
                      height: 60,
                    ),
                    SizedBox(width: 16,),
                    AppText(
                      text: "Đăng nhập",
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ],
                ),
              )),
              SizedBox(
                height: 32,
              ),
              MenuItem(
                iconPath: "assets/icons/account_icons/details_icon.svg",
                title: "Thông tin cá nhân",
                onTap: () {
                  Get.toNamed(AppRoutes.historyOrder);
                },
              ),
              Divider(thickness: 1,),
              MenuItem(
                iconPath: "assets/icons/account_icons/details_icon.svg",
                title: "Thông tin nhà cung cấp",
                onTap: () {
                },
              ),
              Divider(thickness: 1,),
              SizedBox(
                height: 20,
              ),
              logoutButton(),
              SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget logoutButton() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 25),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          visualDensity: VisualDensity.compact,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18.0),
          ),
          elevation: 0,
          backgroundColor: Color(0xffF2F3F2),
          textStyle: TextStyle(
            color: Colors.white,
          ),
          padding: EdgeInsets.symmetric(vertical: 24, horizontal: 25),
          minimumSize: const Size.fromHeight(50),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 20,
              height: 20,
              child: SvgPicture.asset(
                "assets/icons/account_icons/logout_icon.svg",
              ),
            ),
            Text(
              "Log Out",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: AppColors.primaryColor),
            ),
            Container()
          ],
        ),
        onPressed: () {
          controller.logout();
        },
      ),
    );
  }

  Widget getImageHeader() {
    String imagePath = "assets/images/account_image.jpg";
    return CircleAvatar(
      radius: 5.0,
      backgroundImage: AssetImage(imagePath),
      backgroundColor: AppColors.primaryColor.withOpacity(0.7),
    );
  }
}

class MenuItem extends StatelessWidget {
  final String iconPath;
  final String title;
  final Function() onTap;
  const MenuItem({
    super.key, required this.iconPath, required this.title, required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 15),
        padding: EdgeInsets.symmetric(horizontal: 25),
        child: Row(
          children: [
            SizedBox(
              width: 20,
              height: 20,
              child: SvgPicture.asset(
                  iconPath
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Text(
              title,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Spacer(),
            Icon(Icons.arrow_forward_ios)
          ],
        ),
      ),
    );
  }
}

