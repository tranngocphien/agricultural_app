class PlaceOrderRequest {
  final int amount;
  final int shippingFee;
  final int shippingAddressId;
  final int paymentTypeId;
  final List<OrderItem> orderItems;

  PlaceOrderRequest({required this.amount, required this.shippingFee, required this.shippingAddressId,
      required this.paymentTypeId, required this.orderItems});

  Map<String, dynamic> toJson() =>
    {
      "amount": amount,
      "shippingFee": shippingFee,
      "shippingAddressId": shippingAddressId,
      "paymentTypeId": paymentTypeId,
      "items": orderItems.map((e) => e.toJson()).toList()
    };
}

class OrderItem {
  final int productId;
  final int amount;

  OrderItem({required this.productId, required this.amount});

  Map<String, dynamic> toJson() =>
    {
      "productId": productId,
      "amount": amount
    };
}