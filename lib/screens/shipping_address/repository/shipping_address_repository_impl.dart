import 'package:grocery_app/entity/shipping_address_entity.dart';
import 'package:grocery_app/screens/shipping_address/repository/shipping_address_repository.dart';

import '../../../common/base/base_repository.dart';

class ShippingAddressRepositoryImpl extends BaseRepository implements ShippingAddressRepository {
  @override
  Future<List<ShippingAddressEntity>> getShippingAddress() {
    return getListData("/api/account/shipping-address", (json) => ShippingAddressEntity.fromJson(json), keyData: "data");
  }

}