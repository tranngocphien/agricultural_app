import 'package:get/get.dart';
import 'package:grocery_app/entity/cart_item.dart';
import '../../../common/base/base_controller.dart';
import '../../../entity/product_entity.dart';
import '../service/cart_service.dart';

class CartController extends BaseController {
  final CartService cartService;
  final items = List<CartItemEntity>.empty(growable: true).obs;
  final totalPrice = 0.obs;

  CartController(this.cartService);

  @override
  void onInit() async {
    super.onInit();
    items.addAll( await cartService.getListItems());
    totalPrice.value = getTotalPrice();
  }

  int getTotalPrice() {
    int total = 0;
    items.forEach((element) {
      total += (element.product?.price ?? 0) * (element.amount ?? 0);
    });
    return total;
  }

  void addItemToCart(ProductEntity product) {
    bool hasItem = false;
    items.forEach((element) {
      if(element.product?.id == product.id) {
        hasItem = true;
        final newCartItem = element.copyWith(
          amount: element.amount! + 1
        );
        items.remove(element);
        items.insert(0, newCartItem);
      }
    });
    if(!hasItem) {
      final newCartItem = CartItemEntity(
        product: product,
        amount: 1
      );
      items.insert(0, newCartItem);
    }
    List<CartItemEntity> newsItem = List.of(items);
    items.clear();
    items.addAll(newsItem);
    totalPrice.value = getTotalPrice();
    cartService.saveCart(items);
  }

  void removeItem(ProductEntity product) {
    items.forEach((element) {
      if(element.product?.id == product.id) {
        if(element.amount == 1) {
          items.remove(element);
        }
        else {
          final newCartItem = element.copyWith(
              amount: element.amount! - 1
          );
          items.remove(element);
          items.insert(0, newCartItem);
        }
      }
    });
    totalPrice.value = getTotalPrice();
    cartService.saveCart(items);
  }
}