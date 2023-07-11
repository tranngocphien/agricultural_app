import '../../../entity/cart_item.dart';

abstract class CartService {
  Future<List<CartItemEntity>> getListItems();
  Future<void> saveCart(List<CartItemEntity> item);
}