import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grocery_app/common_widgets/app_text.dart';
import 'package:grocery_app/entity/cart_item.dart';
import 'package:grocery_app/entity/grocery_item.dart';
import 'package:grocery_app/styles/colors.dart';

import '../../../../common/utils/number_format.dart';
import '../../../../common/utils/url_format.dart';
import '../../../../widgets/item_counter_widget.dart';
import '../cart_view_model.dart';

class CartItemWidget extends StatefulWidget {
  CartItemWidget({Key? key, required this.item}) : super(key: key);
  final CartItemEntity item;

  @override
  _CartItemWidgetState createState() => _CartItemWidgetState();
}

class _CartItemWidgetState extends State<CartItemWidget> {
  final double height = 110;

  final Color borderColor = Color(0xffE2E2E2);

  final double borderRadius = 18;

  int amount = 1;

  @override
  void initState() {
    super.initState();
    amount = widget.item.amount ?? 0;
  }

  @override
  void didUpdateWidget(covariant CartItemWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    amount = widget.item.amount ?? 0;
  }

  @override
  Widget build(BuildContext context) {
    amount = widget.item.amount ?? 0;
    return Container(
      height: height,
      margin: EdgeInsets.symmetric(
        vertical: 30,
      ),
      child: IntrinsicHeight(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            imageWidget(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppText(
                  text: widget.item.product?.name ?? "",
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
                SizedBox(
                  height: 5,
                ),
                AppText(
                    text: widget.item.product?.sku ?? "",
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: AppColors.darkGrey),
                SizedBox(
                  height: 12,
                ),
                Spacer(),
                ItemCounterWidget(
                  initialAmount: amount,
                  onIncrement: () {
                    if(widget.item.product != null) {
                      Get.find<CartViewModel>().addItemToCart(widget.item.product!);
                    }
                  },
                  onDecrement: () {
                    if(widget.item.product != null) {
                      Get.find<CartViewModel>().removeItem(widget.item.product!);
                    }
                  },
                )
              ],
            ),
            Column(
              children: [
                Spacer(
                  flex: 5,
                ),
                Container(
                  width: 70,
                  child: AppText(
                    text: formatNumber(widget.item.product?.price ?? 0),
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    textAlign: TextAlign.right,
                  ),
                ),
                Spacer(),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget imageWidget() {
    return Container(
      width: 100,
      child: CachedNetworkImage(imageUrl: formatUrl(widget.item.product?.images?.first ?? "")),
    );
  }
}
