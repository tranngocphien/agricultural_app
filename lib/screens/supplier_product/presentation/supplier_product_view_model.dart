import 'package:get/get.dart';

import '../../../common/base/base_controller.dart';
import '../../../entity/supplier_product_entity.dart';
import '../service/supplier_product_service.dart';

class SupplierProductViewModel extends BaseViewModel {
  final SupplierProductService supplierProductService;

  SupplierProductViewModel(this.supplierProductService);
  final supplierProducts = <SupplierProductEntity>[].obs;

  @override
  Future<void> onInit() async {
    super.onInit();
    await getListSupplierProducts();
  }

  Future<void> getListSupplierProducts() async {
    await networkCall(
      supplierProductService.getSupplierProductList(),
      onSuccess: (response) {
        supplierProducts.clear();
        supplierProducts.addAll(response);
        supplierProducts.refresh();
      },
    );
  }

}