import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grocery_app/common/base/base_view.dart';
import 'package:grocery_app/entity/grocery_item.dart';
import 'package:grocery_app/screens/home/presentation/home_controller.dart';
import 'package:grocery_app/screens/home/presentation/widget/product_widget.dart';
import 'package:grocery_app/screens/main/main_controller.dart';
import 'package:grocery_app/screens/product_details/product_details_screen.dart';
import 'package:grocery_app/styles/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grocery_app/widgets/grocery_item_card_widget.dart';
import 'package:grocery_app/widgets/search_bar_widget.dart';
import 'widget/home_banner_widget.dart';

class HomeScreen extends BaseView<HomeController> {
  @override
  Widget buildPage(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 16,
                ),
                padded(SearchBarWidget(
                  onTap: () {
                    Get.find<MainController>().currentIndex = 1;
                  },
                )),
                SizedBox(
                  height: 25,
                ),
                padded(HomeBanner()),
                SizedBox(
                  height: 25,
                ),
                padded(subTitle("Bán chạy")),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                height: 250,
                child: ListView.separated(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  itemCount: controller.products.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                      },
                      child: GroceryItemCardWidget(
                        item: controller.products[index],
                      ),
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return SizedBox(
                      width: 20,
                    );
                  },
                ),
              ),
                SizedBox(
                  height: 15,
                ),
                padded(subTitle("Thể loại")),
                SizedBox(
                  height: 15,
                ),
                Container(
                    height: 105,
                    padding: EdgeInsets.symmetric(horizontal: 25),
                    child: Obx(() => ListView.separated(
                          itemBuilder: (BuildContext context, int index) {
                            return Container(
                                width: 100,
                                height: 100,
                                child: Column(
                                  children: [
                                    Image.network(
                                      controller.categories[index]
                                              .categoryThumb ??
                                          "",
                                      height: 80,
                                      width: 80,
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      controller
                                              .categories[index].categoryName ??
                                          "",
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                        color: AppColors.primaryColor,
                                      ),
                                    )
                                  ],
                                ));
                          },
                          itemCount: controller.categories.length,
                          separatorBuilder: (BuildContext context, int index) {
                            return SizedBox(
                              width: 15,
                            );
                          },
                          scrollDirection: Axis.horizontal,
                        ))),
                SizedBox(
                  height: 15,
                ),
                padded(subTitle("Có thể bạn sẽ thích")),
                SizedBox(
                  height: 15,
                ),
                Obx(() => ListView.separated(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
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
                SizedBox(
                  height: 15,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget padded(Widget widget) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: widget,
    );
  }

  void onItemClicked(BuildContext context, GroceryItem groceryItem) {
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => ProductDetailsScreen(
                groceryItem,
                heroSuffix: "home_screen",
              )),
    );
  }

  Widget subTitle(String text) {
    return Row(
      children: [
        Text(
          text,
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
        ),
        Spacer(),
      ],
    );
  }

  Widget locationWidget() {
    String locationIconPath = "assets/icons/location_icon.svg";
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(
          locationIconPath,
        ),
        SizedBox(
          width: 8,
        ),
        Text(
          "Khartoum,Sudan",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
