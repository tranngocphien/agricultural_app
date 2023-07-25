import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:grocery_app/entity/cart_item.dart';
import 'package:grocery_app/styles/colors.dart';
import '../../../common/base/base_controller.dart';
import '../../../entity/product_entity.dart';
import '../service/cart_service.dart';

class CartViewModel extends BaseViewModel {
  final CartService cartService;
  final items = List<CartItemEntity>.empty(growable: true).obs;
  final totalPrice = 0.obs;

  CartViewModel(this.cartService);

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
    for(int i = 0; i < items.length; i++) {
      if(items[i].product?.id == product.id) {
        hasItem = true;
        final newCartItem = items[i].copyWith(
          amount: items[i].amount! + 1
        );
        items.removeAt(i);
        items.insert(i, newCartItem);
      }
    }
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
    items.refresh();
    totalPrice.value = getTotalPrice();
    cartService.saveCart(items);
    Fluttertoast.showToast(
      backgroundColor: AppColors.primaryColor,
        msg: "Đã cập nhật giỏ hàng",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.TOP,
        timeInSecForIosWeb: 1,
    );
  }

  void removeItem(ProductEntity product) {
    int index = items.indexWhere((element) => element.product?.id == product.id);
    if(items[index].amount == 1) {
      items.removeAt(index);
    } else {
      final newCartItem = items[index].copyWith(
          amount: items[index].amount! - 1
      );
      items.removeAt(index);
      items.insert(index, newCartItem);
    }
    List<CartItemEntity> newsItem = List.of(items);
    items.clear();
    items.addAll(List.of(newsItem));
    items.refresh();
    totalPrice.value = getTotalPrice();
    cartService.saveCart(items);
  }
}