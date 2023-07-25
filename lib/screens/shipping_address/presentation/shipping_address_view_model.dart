import 'package:get/get.dart';

import '../../../common/base/base_controller.dart';
import '../../../entity/shipping_address_entity.dart';
import '../service/shipping_address_service.dart';

class ShippingAddressViewModel extends BaseViewModel {
  final ShippingAddressService shippingAddressService;
  final shippingAddress = List<ShippingAddressEntity>.empty(growable: true).obs;

  ShippingAddressViewModel(this.shippingAddressService);

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