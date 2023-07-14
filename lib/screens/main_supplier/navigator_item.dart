import 'package:flutter/material.dart';
import 'package:grocery_app/screens/account/presentation/account_screen.dart';
import 'package:grocery_app/screens/cart/presentation/cart_screen.dart';
import 'package:grocery_app/screens/explore/presentation/explore_screen.dart';
import 'package:grocery_app/screens/home/presentation/home_screen.dart';

import '../favourite_screen.dart';
import '../supplier_account/presentation/supplier_account_screen.dart';
import '../supplier_product/presentation/supplier_product_screen.dart';
import '../supplier_purchase_order/presentation/supplier_purchase_order_screen.dart';

class NavigatorItem {
  final String label;
  final String iconPath;
  final int index;
  final Widget screen;

  NavigatorItem(this.label, this.iconPath, this.index, this.screen);
}

List<NavigatorItem> navigatorItems = [
  NavigatorItem("Sản phẩm", "assets/icons/shop_icon.svg", 0, SupplierProductScreen()),
  NavigatorItem(
      "Đơn hàng", "assets/icons/explore_icon.svg", 1, SupplierPurchaseOrderScreen()),
  NavigatorItem(
      "Tài khoản", "assets/icons/account_icon.svg", 2, SupplierAccountScreen()),
];
