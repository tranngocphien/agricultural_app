// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shipping_address_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ShippingAddressEntity _$ShippingAddressEntityFromJson(
    Map<String, dynamic> json) {
  return _ShippingAddressEntity.fromJson(json);
}

/// @nodoc
mixin _$ShippingAddressEntity {
  int? get id => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get phoneNumber => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShippingAddressEntityCopyWith<ShippingAddressEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShippingAddressEntityCopyWith<$Res> {
  factory $ShippingAddressEntityCopyWith(ShippingAddressEntity value,
          $Res Function(ShippingAddressEntity) then) =
      _$ShippingAddressEntityCopyWithImpl<$Res, ShippingAddressEntity>;
  @useResult
  $Res call({int? id, String? address, String? name, String? phoneNumber});
}

/// @nodoc
class _$ShippingAddressEntityCopyWithImpl<$Res,
        $Val extends ShippingAddressEntity>
    implements $ShippingAddressEntityCopyWith<$Res> {
  _$ShippingAddressEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? address = freezed,
    Object? name = freezed,
    Object? phoneNumber = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ShippingAddressEntityCopyWith<$Res>
    implements $ShippingAddressEntityCopyWith<$Res> {
  factory _$$_ShippingAddressEntityCopyWith(_$_ShippingAddressEntity value,
          $Res Function(_$_ShippingAddressEntity) then) =
      __$$_ShippingAddressEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? address, String? name, String? phoneNumber});
}

/// @nodoc
class __$$_ShippingAddressEntityCopyWithImpl<$Res>
    extends _$ShippingAddressEntityCopyWithImpl<$Res, _$_ShippingAddressEntity>
    implements _$$_ShippingAddressEntityCopyWith<$Res> {
  __$$_ShippingAddressEntityCopyWithImpl(_$_ShippingAddressEntity _value,
      $Res Function(_$_ShippingAddressEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? address = freezed,
    Object? name = freezed,
    Object? phoneNumber = freezed,
  }) {
    return _then(_$_ShippingAddressEntity(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ShippingAddressEntity implements _ShippingAddressEntity {
  const _$_ShippingAddressEntity(
      {this.id, this.address, this.name, this.phoneNumber});

  factory _$_ShippingAddressEntity.fromJson(Map<String, dynamic> json) =>
      _$$_ShippingAddressEntityFromJson(json);

  @override
  final int? id;
  @override
  final String? address;
  @override
  final String? name;
  @override
  final String? phoneNumber;

  @override
  String toString() {
    return 'ShippingAddressEntity(id: $id, address: $address, name: $name, phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShippingAddressEntity &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, address, name, phoneNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ShippingAddressEntityCopyWith<_$_ShippingAddressEntity> get copyWith =>
      __$$_ShippingAddressEntityCopyWithImpl<_$_ShippingAddressEntity>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ShippingAddressEntityToJson(
      this,
    );
  }
}

abstract class _ShippingAddressEntity implements ShippingAddressEntity {
  const factory _ShippingAddressEntity(
      {final int? id,
      final String? address,
      final String? name,
      final String? phoneNumber}) = _$_ShippingAddressEntity;

  factory _ShippingAddressEntity.fromJson(Map<String, dynamic> json) =
      _$_ShippingAddressEntity.fromJson;

  @override
  int? get id;
  @override
  String? get address;
  @override
  String? get name;
  @override
  String? get phoneNumber;
  @override
  @JsonKey(ignore: true)
  _$$_ShippingAddressEntityCopyWith<_$_ShippingAddressEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
