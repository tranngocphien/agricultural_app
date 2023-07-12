import 'package:get/get.dart';

import '../../../common/base/base_controller.dart';
import '../../../entity/shipping_address_entity.dart';
import '../service/shipping_address_service.dart';

class ShippingAddressController extends BaseController {
  final ShippingAddressService shippingAddressService;
  final shippingAddress = List<ShippingAddressEntity>.empty(growable: true).obs;

  ShippingAddressController(this.shippingAddressService);

  @override
  void onInit() async {
    super.onInit();
    await getShippingAddress();
  }

  Future<void> getShippingAddress() async {
    await networkCall(
      shippingAddressService.getShippingAddress(),
      onSuccess: (data) {
        shippingAddress.addAll(data);
      },
    );
  }


}