import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../common/base/base_view.dart';
import '../../../styles/text_style.dart';
import '../../home/presentation/widget/product_widget.dart';
import 'category_collection_controller.dart';

class CategoryCollectionScreen extends BaseView<CategoryCollectionController> {
  @override
  Widget buildPage(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(controller.categoryEntity.categoryName ?? '', style: AppStyles.s18w600primary,),
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_outlined, color: Colors.black,),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        children: [
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
                height: 20,
              );
            },
          )),
          SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }
}
