// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'purchase_order_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PurchaseOrderEntity _$PurchaseOrderEntityFromJson(Map<String, dynamic> json) {
  return _PurchaseOrderEntity.fromJson(json);
}

/// @nodoc
mixin _$PurchaseOrderEntity {
  int? get id => throw _privateConstructorUsedError;
  SupplierProductEntity? get supplierProduct =>
      throw _privateConstructorUsedError;
  int? get amount => throw _privateConstructorUsedError;
  int? get price => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get note => throw _privateConstructorUsedError;
  DateTime? get harvestAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PurchaseOrderEntityCopyWith<PurchaseOrderEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PurchaseOrderEntityCopyWith<$Res> {
  factory $PurchaseOrderEntityCopyWith(
          PurchaseOrderEntity value, $Res Function(PurchaseOrderEntity) then) =
      _$PurchaseOrderEntityCopyWithImpl<$Res, PurchaseOrderEntity>;
  @useResult
  $Res call(
      {int? id,
      SupplierProductEntity? supplierProduct,
      int? amount,
      int? price,
      String? status,
      String? note,
      DateTime? harvestAt});

  $SupplierProductEntityCopyWith<$Res>? get supplierProduct;
}

/// @nodoc
class _$PurchaseOrderEntityCopyWithImpl<$Res, $Val extends PurchaseOrderEntity>
    implements $PurchaseOrderEntityCopyWith<$Res> {
  _$PurchaseOrderEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? supplierProduct = freezed,
    Object? amount = freezed,
    Object? price = freezed,
    Object? status = freezed,
    Object? note = freezed,
    Object? harvestAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      supplierProduct: freezed == supplierProduct
          ? _value.supplierProduct
          : supplierProduct // ignore: cast_nullable_to_non_nullable
              as SupplierProductEntity?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      harvestAt: freezed == harvestAt
          ? _value.harvestAt
          : harvestAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SupplierProductEntityCopyWith<$Res>? get supplierProduct {
    if (_value.supplierProduct == null) {
      return null;
    }

    return $SupplierProductEntityCopyWith<$Res>(_value.supplierProduct!,
        (value) {
      return _then(_value.copyWith(supplierProduct: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PurchaseOrderEntityCopyWith<$Res>
    implements $PurchaseOrderEntityCopyWith<$Res> {
  factory _$$_PurchaseOrderEntityCopyWith(_$_PurchaseOrderEntity value,
          $Res Function(_$_PurchaseOrderEntity) then) =
      __$$_PurchaseOrderEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      SupplierProductEntity? supplierProduct,
      int? amount,
      int? price,
      String? status,
      String? note,
      DateTime? harvestAt});

  @override
  $SupplierProductEntityCopyWith<$Res>? get supplierProduct;
}

/// @nodoc
class __$$_PurchaseOrderEntityCopyWithImpl<$Res>
    extends _$PurchaseOrderEntityCopyWithImpl<$Res, _$_PurchaseOrderEntity>
    implements _$$_PurchaseOrderEntityCopyWith<$Res> {
  __$$_PurchaseOrderEntityCopyWithImpl(_$_PurchaseOrderEntity _value,
      $Res Function(_$_PurchaseOrderEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? supplierProduct = freezed,
    Object? amount = freezed,
    Object? price = freezed,
    Object? status = freezed,
    Object? note = freezed,
    Object? harvestAt = freezed,
  }) {
    return _then(_$_PurchaseOrderEntity(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      supplierProduct: freezed == supplierProduct
          ? _value.supplierProduct
          : supplierProduct // ignore: cast_nullable_to_non_nullable
              as SupplierProductEntity?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      harvestAt: freezed == harvestAt
          ? _value.harvestAt
          : harvestAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PurchaseOrderEntity implements _PurchaseOrderEntity {
  _$_PurchaseOrderEntity(
      {this.id,
      this.supplierProduct,
      this.amount,
      this.price,
      this.status,
      this.note,
      this.harvestAt});

  factory _$_PurchaseOrderEntity.fromJson(Map<String, dynamic> json) =>
      _$$_PurchaseOrderEntityFromJson(json);

  @override
  final int? id;
  @override
  final SupplierProductEntity? supplierProduct;
  @override
  final int? amount;
  @override
  final int? price;
  @override
  final String? status;
  @override
  final String? note;
  @override
  final DateTime? harvestAt;

  @override
  String toString() {
    return 'PurchaseOrderEntity(id: $id, supplierProduct: $supplierProduct, amount: $amount, price: $price, status: $status, note: $note, harvestAt: $harvestAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PurchaseOrderEntity &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.supplierProduct, supplierProduct) ||
                other.supplierProduct == supplierProduct) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.harvestAt, harvestAt) ||
                other.harvestAt == harvestAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, supplierProduct, amount, price, status, note, harvestAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PurchaseOrderEntityCopyWith<_$_PurchaseOrderEntity> get copyWith =>
      __$$_PurchaseOrderEntityCopyWithImpl<_$_PurchaseOrderEntity>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PurchaseOrderEntityToJson(
      this,
    );
  }
}

abstract class _PurchaseOrderEntity implements PurchaseOrderEntity {
  factory _PurchaseOrderEntity(
      {final int? id,
      final SupplierProductEntity? supplierProduct,
      final int? amount,
      final int? price,
      final String? status,
      final String? note,
      final DateTime? harvestAt}) = _$_PurchaseOrderEntity;

  factory _PurchaseOrderEntity.fromJson(Map<String, dynamic> json) =
      _$_PurchaseOrderEntity.fromJson;

  @override
  int? get id;
  @override
  SupplierProductEntity? get supplierProduct;
  @override
  int? get amount;
  @override
  int? get price;
  @override
  String? get status;
  @override
  String? get note;
  @override
  DateTime? get harvestAt;
  @override
  @JsonKey(ignore: true)
  _$$_PurchaseOrderEntityCopyWith<_$_PurchaseOrderEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
