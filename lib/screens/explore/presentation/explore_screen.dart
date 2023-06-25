import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:grocery_app/common_widgets/app_text.dart';
import 'package:grocery_app/entity/category_item.dart';
import 'package:grocery_app/screens/explore/presentation/explore_controller.dart';
import 'package:grocery_app/widgets/category_item_card_widget.dart';
import 'package:grocery_app/widgets/search_bar_widget.dart';

import '../../../common/base/base_view.dart';
import '../../category_items_screen.dart';
import '../../home/presentation/widget/product_widget.dart';

List<Color> gridColors = [
  Color(0xff53B175),
  Color(0xffF8A44C),
  Color(0xffF7A593),
  Color(0xffD3B0E0),
  Color(0xffFDE598),
  Color(0xffB7DFF5),
  Color(0xff836AF6),
  Color(0xffD73B77),
];

class ExploreScreen extends BaseView<ExploreController> {
  @override
  Widget buildPage(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
      child: Column(children: [
        SizedBox(
          height: 20,
        ),
        Center(
          child: AppText(
            text: "Tìm kiếm sản phẩm",
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: SearchBarWidget(),
        ),
        SizedBox(
          height: 20,
        ),
        Obx(() => ListView.separated(
          physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              padding: EdgeInsets.symmetric(horizontal: 20),
              itemCount: controller.products.length,
              itemBuilder: (context, index) {
                return ProductWidget(
                  product: controller.products[index],
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return SizedBox(
                  width: 20,
                );
              },
            )),
      ]),
    )));
  }

  void onCategoryItemClicked(BuildContext context, CategoryItem categoryItem) {
    Navigator.of(context).push(new MaterialPageRoute(
      builder: (BuildContext context) {
        return CategoryItemsScreen();
      },
    ));
  }
}
