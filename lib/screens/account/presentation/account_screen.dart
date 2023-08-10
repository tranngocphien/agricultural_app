import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:grocery_app/common/utils/url_format.dart';
import 'package:grocery_app/common_widgets/app_text.dart';
import 'package:grocery_app/helpers/column_with_seprator.dart';
import 'package:grocery_app/screens/account/presentation/account_view_model.dart';
import 'package:grocery_app/styles/colors.dart';

import '../../../common/base/base_view.dart';
import '../../../common/global_state.dart';
import '../../../routes/app_routes.dart';
import 'package:get/get.dart';

import 'account_item.dart';

class AccountScreen extends BaseView<AccountViewModel> {
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
              GlobalState.isLogin.value ? Container(
                child: Column(
                  children: [
                    Container(
                      height: 150,
                      width: 150,
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: (controller.accountInfo.value?.avatar?.isEmpty ?? true) ? Image.asset(
                        "assets/icons/icon_logo.png",
                        fit: BoxFit.fitHeight,
                      ) : ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: CachedNetworkImage(
                          imageUrl: formatUrl(controller.accountInfo.value?.avatar ?? ""),
                          fit: BoxFit.fitHeight,
                        ),
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
                height: 20,
              ),
              MenuItem(
                iconPath: "assets/icons/account_icons/orders_icon.svg",
                title: "Đơn hàng của tôi",
                onTap: () {
                  if(GlobalState.isLogin.value) {
                    Get.toNamed(AppRoutes.historyOrder);
                  } else {
                    Fluttertoast.showToast(
                      backgroundColor: AppColors.primaryColor,
                      msg: "Bạn cần đăng nhập để sử dụng tính năng này!",
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.TOP,
                      timeInSecForIosWeb: 1,
                    );
                  }
                },
              ),
              Divider(thickness: 1,),
              MenuItem(
                iconPath: "assets/icons/account_icons/details_icon.svg",
                title: "Thông tin cá nhân",
                onTap: () {
                  if(GlobalState.isLogin.value) {
                    Get.toNamed(AppRoutes.profile, arguments: controller.accountInfo.value);
                  } else {
                    Fluttertoast.showToast(
                      backgroundColor: AppColors.primaryColor,
                      msg: "Bạn cần đăng nhập để sử dụng tính năng này!",
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.TOP,
                      timeInSecForIosWeb: 1,
                    );
                  }
                },
              ),
              Divider(thickness: 1,),
              MenuItem(
                iconPath: "assets/icons/account_icons/details_icon.svg",
                title: "Đổi mật khẩu",
                onTap: () {
                  if(GlobalState.isLogin.value) {
                    Get.toNamed(AppRoutes.changePassword);
                  } else {
                    Fluttertoast.showToast(
                      backgroundColor: AppColors.primaryColor,
                      msg: "Bạn cần đăng nhập để sử dụng tính năng này!",
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.TOP,
                      timeInSecForIosWeb: 1,
                    );
                  }
                },
              ),
              Divider(thickness: 1,),
              MenuItem(
                iconPath: "assets/icons/account_icons/details_icon.svg",
                title: "Đăng ký trở thành nhà cung cấp",
                onTap: () {
                  if(GlobalState.isLogin.value) {
                    Get.toNamed(AppRoutes.createSupplierInfo);
                  } else {
                    Fluttertoast.showToast(
                      backgroundColor: AppColors.primaryColor,
                      msg: "Bạn cần đăng nhập để sử dụng tính năng này!",
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.TOP,
                      timeInSecForIosWeb: 1,
                    );
                  }
                },
              ),
              Divider(thickness: 1,),
              MenuItem(
                iconPath: "assets/icons/account_icons/delivery_icon.svg",
                title: "Địa chỉ giao hàng",
                onTap: () {
                  if(GlobalState.isLogin.value) {
                    Get.toNamed(AppRoutes.address);
                    return;
                  }
                  else {
                    Fluttertoast.showToast(
                      backgroundColor: AppColors.primaryColor,
                      msg: "Bạn cần đăng nhập để sử dụng tính năng này!",
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.TOP,
                      timeInSecForIosWeb: 1,
                    );
                  }
                },
              ),
              Divider(
                thickness: 1,
              ),
              MenuItem(
                iconPath: "assets/icons/account_icons/about_icon.svg",
                title: "ĐATN - Trần Ngọc Phiên",
                onTap: () {
                  Get.toNamed(AppRoutes.historyOrder);
                },
              ),

              SizedBox(
                height: 20,
              ),
              if(GlobalState.isLogin.value)
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
              "Đăng xuất",
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
