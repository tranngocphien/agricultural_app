import 'dart:convert';

import 'package:get/get.dart';
import 'package:grocery_app/common/local/shared_pref.dart';
import 'package:grocery_app/entity/cart_item.dart';
import 'package:grocery_app/screens/cart/repository/cart_repository.dart';

import '../../../common/base/base_service.dart';
import '../../../common/constants.dart';
import 'cart_service.dart';

class CartServiceImpl extends BaseService<CartRepository> implements CartService {
  CartServiceImpl(super.repository);
  final LocalStorage _localPref = Get.find<LocalStorage>();

  @override
  Future<List<CartItemEntity>> getListItems() async {
    String? cartJson = await _localPref.get<String?>(SharedPrefKey.CART);
    if(cartJson == null) {
      return [];
    } else {
      List itemsJson = jsonDecode(cartJson);
      List<CartItemEntity> items = itemsJson.map((e) => CartItemEntity.fromJson(e)).toList();
      print(items.length);
      return Future.value(items);
    }
  }

  @override
  Future<void> saveCart(List<CartItemEntity> item) async {
    String cartEncode = jsonEncode(item);
    await _localPref.save(SharedPrefKey.CART, cartEncode);
  }

}