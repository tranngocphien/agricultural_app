import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:grocery_app/styles/colors.dart';

import 'main_supplier_controller.dart';
import 'navigator_item.dart';

class MainSupplierScreen extends StatefulWidget {
  @override
  _MainSupplierScreenState createState() => _MainSupplierScreenState();
}

class _MainSupplierScreenState extends State<MainSupplierScreen> {
  final mainSupplierControllerController = Get.find<MainSupplierController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Obx(() => navigatorItems[mainSupplierControllerController.currentIndex].screen) ,
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(15),
            topLeft: Radius.circular(15),
          ),
          boxShadow: [
            BoxShadow(
                color: Colors.black38.withOpacity(0.1),
                spreadRadius: 0,
                blurRadius: 37,
                offset: Offset(0, -12)),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
          ),
          child: Obx(() => BottomNavigationBar(
            backgroundColor: Colors.white,
            currentIndex: mainSupplierControllerController.currentIndex,
            onTap: (index) {
              mainSupplierControllerController.currentIndex = index;
            },
            type: BottomNavigationBarType.fixed,
            selectedItemColor: AppColors.primaryColor,
            selectedLabelStyle: TextStyle(fontWeight: FontWeight.w600),
            unselectedLabelStyle: TextStyle(fontWeight: FontWeight.w600),
            unselectedItemColor: Colors.black,
            items: navigatorItems.map((e) {
              return getNavigationBarItem(
                  label: e.label, index: e.index, iconPath: e.iconPath);
            }).toList(),
          ) ) ,
        ),
      ),
    );
  }

  BottomNavigationBarItem getNavigationBarItem(
      {required String label, required String iconPath, required int index}) {
    Color iconColor =
        index == mainSupplierControllerController.currentIndex ? AppColors.primaryColor : Colors.black;
    return BottomNavigationBarItem(
      label: label,
      icon: SvgPicture.asset(
        iconPath,
        color: iconColor,
      ),
    );
  }
}