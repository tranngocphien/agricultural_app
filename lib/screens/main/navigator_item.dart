import 'package:flutter/material.dart';
import 'package:grocery_app/screens/account/presentation/account_screen.dart';
import 'package:grocery_app/screens/cart/presentation/cart_screen.dart';
import 'package:grocery_app/screens/explore/presentation/explore_screen.dart';
import 'package:grocery_app/screens/home/presentation/home_screen.dart';

import '../favourite_screen.dart';

class NavigatorItem {
  final String label;
  final String iconPath;
  final int index;
  final Widget screen;

  NavigatorItem(this.label, this.iconPath, this.index, this.screen);
}

List<NavigatorItem> navigatorItems = [
  NavigatorItem("Sản phẩm", "assets/icons/shop_icon.svg", 0, HomeScreen()),
  NavigatorItem("Tìm kiếm", "assets/icons/explore_icon.svg", 1, ExploreScreen()),
  NavigatorItem("Giỏ hàng", "assets/icons/cart_icon.svg", 2, CartScreen()),
  NavigatorItem("Tài khoản", "assets/icons/account_icon.svg", 3, AccountScreen()),
];
