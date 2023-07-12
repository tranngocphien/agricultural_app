// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OrderEntity _$OrderEntityFromJson(Map<String, dynamic> json) {
  return _OrderEntity.fromJson(json);
}

/// @nodoc
mixin _$OrderEntity {
  int? get id => throw _privateConstructorUsedError;
  int? get amount => throw _privateConstructorUsedError;
  int? get shippingFee => throw _privateConstructorUsedError;
  ShippingAddressEntity? get shippingAddress =>
      throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  PaymentTypeEntity? get paymentType => throw _privateConstructorUsedError;
  List<OrderItemEntity>? get items => throw _privateConstructorUsedError;
  DateTime? get createTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderEntityCopyWith<OrderEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderEntityCopyWith<$Res> {
  factory $OrderEntityCopyWith(
          OrderEntity value, $Res Function(OrderEntity) then) =
      _$OrderEntityCopyWithImpl<$Res, OrderEntity>;
  @useResult
  $Res call(
      {int? id,
      int? amount,
      int? shippingFee,
      ShippingAddressEntity? shippingAddress,
      String? status,
      PaymentTypeEntity? paymentType,
      List<OrderItemEntity>? items,
      DateTime? createTime});

  $ShippingAddressEntityCopyWith<$Res>? get shippingAddress;
  $PaymentTypeEntityCopyWith<$Res>? get paymentType;
}

/// @nodoc
class _$OrderEntityCopyWithImpl<$Res, $Val extends OrderEntity>
    implements $OrderEntityCopyWith<$Res> {
  _$OrderEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? amount = freezed,
    Object? shippingFee = freezed,
    Object? shippingAddress = freezed,
    Object? status = freezed,
    Object? paymentType = freezed,
    Object? items = freezed,
    Object? createTime = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int?,
      shippingFee: freezed == shippingFee
          ? _value.shippingFee
          : shippingFee // ignore: cast_nullable_to_non_nullable
              as int?,
      shippingAddress: freezed == shippingAddress
          ? _value.shippingAddress
          : shippingAddress // ignore: cast_nullable_to_non_nullable
              as ShippingAddressEntity?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentType: freezed == paymentType
          ? _value.paymentType
          : paymentType // ignore: cast_nullable_to_non_nullable
              as PaymentTypeEntity?,
      items: freezed == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<OrderItemEntity>?,
      createTime: freezed == createTime
          ? _value.createTime
          : createTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ShippingAddressEntityCopyWith<$Res>? get shippingAddress {
    if (_value.shippingAddress == null) {
      return null;
    }

    return $ShippingAddressEntityCopyWith<$Res>(_value.shippingAddress!,
        (value) {
      return _then(_value.copyWith(shippingAddress: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PaymentTypeEntityCopyWith<$Res>? get paymentType {
    if (_value.paymentType == null) {
      return null;
    }

    return $PaymentTypeEntityCopyWith<$Res>(_value.paymentType!, (value) {
      return _then(_value.copyWith(paymentType: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_OrderEntityCopyWith<$Res>
    implements $OrderEntityCopyWith<$Res> {
  factory _$$_OrderEntityCopyWith(
          _$_OrderEntity value, $Res Function(_$_OrderEntity) then) =
      __$$_OrderEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      int? amount,
      int? shippingFee,
      ShippingAddressEntity? shippingAddress,
      String? status,
      PaymentTypeEntity? paymentType,
      List<OrderItemEntity>? items,
      DateTime? createTime});

  @override
  $ShippingAddressEntityCopyWith<$Res>? get shippingAddress;
  @override
  $PaymentTypeEntityCopyWith<$Res>? get paymentType;
}

/// @nodoc
class __$$_OrderEntityCopyWithImpl<$Res>
    extends _$OrderEntityCopyWithImpl<$Res, _$_OrderEntity>
    implements _$$_OrderEntityCopyWith<$Res> {
  __$$_OrderEntityCopyWithImpl(
      _$_OrderEntity _value, $Res Function(_$_OrderEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? amount = freezed,
    Object? shippingFee = freezed,
    Object? shippingAddress = freezed,
    Object? status = freezed,
    Object? paymentType = freezed,
    Object? items = freezed,
    Object? createTime = freezed,
  }) {
    return _then(_$_OrderEntity(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int?,
      shippingFee: freezed == shippingFee
          ? _value.shippingFee
          : shippingFee // ignore: cast_nullable_to_non_nullable
              as int?,
      shippingAddress: freezed == shippingAddress
          ? _value.shippingAddress
          : shippingAddress // ignore: cast_nullable_to_non_nullable
              as ShippingAddressEntity?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentType: freezed == paymentType
          ? _value.paymentType
          : paymentType // ignore: cast_nullable_to_non_nullable
              as PaymentTypeEntity?,
      items: freezed == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<OrderItemEntity>?,
      createTime: freezed == createTime
          ? _value.createTime
          : createTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OrderEntity implements _OrderEntity {
  _$_OrderEntity(
      {this.id,
      this.amount,
      this.shippingFee,
      this.shippingAddress,
      this.status,
      this.paymentType,
      final List<OrderItemEntity>? items,
      this.createTime})
      : _items = items;

  factory _$_OrderEntity.fromJson(Map<String, dynamic> json) =>
      _$$_OrderEntityFromJson(json);

  @override
  final int? id;
  @override
  final int? amount;
  @override
  final int? shippingFee;
  @override
  final ShippingAddressEntity? shippingAddress;
  @override
  final String? status;
  @override
  final PaymentTypeEntity? paymentType;
  final List<OrderItemEntity>? _items;
  @override
  List<OrderItemEntity>? get items {
    final value = _items;
    if (value == null) return null;
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final DateTime? createTime;

  @override
  String toString() {
    return 'OrderEntity(id: $id, amount: $amount, shippingFee: $shippingFee, shippingAddress: $shippingAddress, status: $status, paymentType: $paymentType, items: $items, createTime: $createTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OrderEntity &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.shippingFee, shippingFee) ||
                other.shippingFee == shippingFee) &&
            (identical(other.shippingAddress, shippingAddress) ||
                other.shippingAddress == shippingAddress) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.paymentType, paymentType) ||
                other.paymentType == paymentType) &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.createTime, createTime) ||
                other.createTime == createTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      amount,
      shippingFee,
      shippingAddress,
      status,
      paymentType,
      const DeepCollectionEquality().hash(_items),
      createTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OrderEntityCopyWith<_$_OrderEntity> get copyWith =>
      __$$_OrderEntityCopyWithImpl<_$_OrderEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrderEntityToJson(
      this,
    );
  }
}

abstract class _OrderEntity implements OrderEntity {
  factory _OrderEntity(
      {final int? id,
      final int? amount,
      final int? shippingFee,
      final ShippingAddressEntity? shippingAddress,
      final String? status,
      final PaymentTypeEntity? paymentType,
      final List<OrderItemEntity>? items,
      final DateTime? createTime}) = _$_OrderEntity;

  factory _OrderEntity.fromJson(Map<String, dynamic> json) =
      _$_OrderEntity.fromJson;

  @override
  int? get id;
  @override
  int? get amount;
  @override
  int? get shippingFee;
  @override
  ShippingAddressEntity? get shippingAddress;
  @override
  String? get status;
  @override
  PaymentTypeEntity? get paymentType;
  @override
  List<OrderItemEntity>? get items;
  @override
  DateTime? get createTime;
  @override
  @JsonKey(ignore: true)
  _$$_OrderEntityCopyWith<_$_OrderEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

OrderItemEntity _$OrderItemEntityFromJson(Map<String, dynamic> json) {
  return _OrderItemEntity.fromJson(json);
}

/// @nodoc
mixin _$OrderItemEntity {
  int? get id => throw _privateConstructorUsedError;
  ProductEntity? get product => throw _privateConstructorUsedError;
  int? get quantity => throw _privateConstructorUsedError;
  bool? get hasReview => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderItemEntityCopyWith<OrderItemEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderItemEntityCopyWith<$Res> {
  factory $OrderItemEntityCopyWith(
          OrderItemEntity value, $Res Function(OrderItemEntity) then) =
      _$OrderItemEntityCopyWithImpl<$Res, OrderItemEntity>;
  @useResult
  $Res call({int? id, ProductEntity? product, int? quantity, bool? hasReview});

  $ProductEntityCopyWith<$Res>? get product;
}

/// @nodoc
class _$OrderItemEntityCopyWithImpl<$Res, $Val extends OrderItemEntity>
    implements $OrderItemEntityCopyWith<$Res> {
  _$OrderItemEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? product = freezed,
    Object? quantity = freezed,
    Object? hasReview = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      product: freezed == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductEntity?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      hasReview: freezed == hasReview
          ? _value.hasReview
          : hasReview // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductEntityCopyWith<$Res>? get product {
    if (_value.product == null) {
      return null;
    }

    return $ProductEntityCopyWith<$Res>(_value.product!, (value) {
      return _then(_value.copyWith(product: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_OrderItemEntityCopyWith<$Res>
    implements $OrderItemEntityCopyWith<$Res> {
  factory _$$_OrderItemEntityCopyWith(
          _$_OrderItemEntity value, $Res Function(_$_OrderItemEntity) then) =
      __$$_OrderItemEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, ProductEntity? product, int? quantity, bool? hasReview});

  @override
  $ProductEntityCopyWith<$Res>? get product;
}

/// @nodoc
class __$$_OrderItemEntityCopyWithImpl<$Res>
    extends _$OrderItemEntityCopyWithImpl<$Res, _$_OrderItemEntity>
    implements _$$_OrderItemEntityCopyWith<$Res> {
  __$$_OrderItemEntityCopyWithImpl(
      _$_OrderItemEntity _value, $Res Function(_$_OrderItemEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? product = freezed,
    Object? quantity = freezed,
    Object? hasReview = freezed,
  }) {
    return _then(_$_OrderItemEntity(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      product: freezed == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductEntity?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      hasReview: freezed == hasReview
          ? _value.hasReview
          : hasReview // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OrderItemEntity implements _OrderItemEntity {
  _$_OrderItemEntity({this.id, this.product, this.quantity, this.hasReview});

  factory _$_OrderItemEntity.fromJson(Map<String, dynamic> json) =>
      _$$_OrderItemEntityFromJson(json);

  @override
  final int? id;
  @override
  final ProductEntity? product;
  @override
  final int? quantity;
  @override
  final bool? hasReview;

  @override
  String toString() {
    return 'OrderItemEntity(id: $id, product: $product, quantity: $quantity, hasReview: $hasReview)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OrderItemEntity &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.product, product) || other.product == product) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.hasReview, hasReview) ||
                other.hasReview == hasReview));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, product, quantity, hasReview);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OrderItemEntityCopyWith<_$_OrderItemEntity> get copyWith =>
      __$$_OrderItemEntityCopyWithImpl<_$_OrderItemEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrderItemEntityToJson(
      this,
    );
  }
}

abstract class _OrderItemEntity implements OrderItemEntity {
  factory _OrderItemEntity(
      {final int? id,
      final ProductEntity? product,
      final int? quantity,
      final bool? hasReview}) = _$_OrderItemEntity;

  factory _OrderItemEntity.fromJson(Map<String, dynamic> json) =
      _$_OrderItemEntity.fromJson;

  @override
  int? get id;
  @override
  ProductEntity? get product;
  @override
  int? get quantity;
  @override
  bool? get hasReview;
  @override
  @JsonKey(ignore: true)
  _$$_OrderItemEntityCopyWith<_$_OrderItemEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
