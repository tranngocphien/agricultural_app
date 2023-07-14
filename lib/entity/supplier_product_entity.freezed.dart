// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'supplier_product_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SupplierProductEntity _$SupplierProductEntityFromJson(
    Map<String, dynamic> json) {
  return _SupplierProductEntity.fromJson(json);
}

/// @nodoc
mixin _$SupplierProductEntity {
  int? get id => throw _privateConstructorUsedError;
  String? get productName => throw _privateConstructorUsedError;
  int? get expectedPrice => throw _privateConstructorUsedError;
  String? get sku => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  CategoryEntity? get category => throw _privateConstructorUsedError;
  List<String>? get certificateImages => throw _privateConstructorUsedError;
  List<String>? get images => throw _privateConstructorUsedError;
  String? get preservation => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SupplierProductEntityCopyWith<SupplierProductEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SupplierProductEntityCopyWith<$Res> {
  factory $SupplierProductEntityCopyWith(SupplierProductEntity value,
          $Res Function(SupplierProductEntity) then) =
      _$SupplierProductEntityCopyWithImpl<$Res, SupplierProductEntity>;
  @useResult
  $Res call(
      {int? id,
      String? productName,
      int? expectedPrice,
      String? sku,
      String? location,
      String? description,
      CategoryEntity? category,
      List<String>? certificateImages,
      List<String>? images,
      String? preservation});

  $CategoryEntityCopyWith<$Res>? get category;
}

/// @nodoc
class _$SupplierProductEntityCopyWithImpl<$Res,
        $Val extends SupplierProductEntity>
    implements $SupplierProductEntityCopyWith<$Res> {
  _$SupplierProductEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? productName = freezed,
    Object? expectedPrice = freezed,
    Object? sku = freezed,
    Object? location = freezed,
    Object? description = freezed,
    Object? category = freezed,
    Object? certificateImages = freezed,
    Object? images = freezed,
    Object? preservation = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      productName: freezed == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String?,
      expectedPrice: freezed == expectedPrice
          ? _value.expectedPrice
          : expectedPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      sku: freezed == sku
          ? _value.sku
          : sku // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CategoryEntity?,
      certificateImages: freezed == certificateImages
          ? _value.certificateImages
          : certificateImages // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      preservation: freezed == preservation
          ? _value.preservation
          : preservation // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CategoryEntityCopyWith<$Res>? get category {
    if (_value.category == null) {
      return null;
    }

    return $CategoryEntityCopyWith<$Res>(_value.category!, (value) {
      return _then(_value.copyWith(category: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_SupplierProductEntityCopyWith<$Res>
    implements $SupplierProductEntityCopyWith<$Res> {
  factory _$$_SupplierProductEntityCopyWith(_$_SupplierProductEntity value,
          $Res Function(_$_SupplierProductEntity) then) =
      __$$_SupplierProductEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? productName,
      int? expectedPrice,
      String? sku,
      String? location,
      String? description,
      CategoryEntity? category,
      List<String>? certificateImages,
      List<String>? images,
      String? preservation});

  @override
  $CategoryEntityCopyWith<$Res>? get category;
}

/// @nodoc
class __$$_SupplierProductEntityCopyWithImpl<$Res>
    extends _$SupplierProductEntityCopyWithImpl<$Res, _$_SupplierProductEntity>
    implements _$$_SupplierProductEntityCopyWith<$Res> {
  __$$_SupplierProductEntityCopyWithImpl(_$_SupplierProductEntity _value,
      $Res Function(_$_SupplierProductEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? productName = freezed,
    Object? expectedPrice = freezed,
    Object? sku = freezed,
    Object? location = freezed,
    Object? description = freezed,
    Object? category = freezed,
    Object? certificateImages = freezed,
    Object? images = freezed,
    Object? preservation = freezed,
  }) {
    return _then(_$_SupplierProductEntity(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      productName: freezed == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String?,
      expectedPrice: freezed == expectedPrice
          ? _value.expectedPrice
          : expectedPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      sku: freezed == sku
          ? _value.sku
          : sku // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CategoryEntity?,
      certificateImages: freezed == certificateImages
          ? _value._certificateImages
          : certificateImages // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      images: freezed == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      preservation: freezed == preservation
          ? _value.preservation
          : preservation // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SupplierProductEntity implements _SupplierProductEntity {
  const _$_SupplierProductEntity(
      {this.id,
      this.productName,
      this.expectedPrice,
      this.sku,
      this.location,
      this.description,
      this.category,
      final List<String>? certificateImages,
      final List<String>? images,
      this.preservation})
      : _certificateImages = certificateImages,
        _images = images;

  factory _$_SupplierProductEntity.fromJson(Map<String, dynamic> json) =>
      _$$_SupplierProductEntityFromJson(json);

  @override
  final int? id;
  @override
  final String? productName;
  @override
  final int? expectedPrice;
  @override
  final String? sku;
  @override
  final String? location;
  @override
  final String? description;
  @override
  final CategoryEntity? category;
  final List<String>? _certificateImages;
  @override
  List<String>? get certificateImages {
    final value = _certificateImages;
    if (value == null) return null;
    if (_certificateImages is EqualUnmodifiableListView)
      return _certificateImages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _images;
  @override
  List<String>? get images {
    final value = _images;
    if (value == null) return null;
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? preservation;

  @override
  String toString() {
    return 'SupplierProductEntity(id: $id, productName: $productName, expectedPrice: $expectedPrice, sku: $sku, location: $location, description: $description, category: $category, certificateImages: $certificateImages, images: $images, preservation: $preservation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SupplierProductEntity &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.productName, productName) ||
                other.productName == productName) &&
            (identical(other.expectedPrice, expectedPrice) ||
                other.expectedPrice == expectedPrice) &&
            (identical(other.sku, sku) || other.sku == sku) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.category, category) ||
                other.category == category) &&
            const DeepCollectionEquality()
                .equals(other._certificateImages, _certificateImages) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.preservation, preservation) ||
                other.preservation == preservation));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      productName,
      expectedPrice,
      sku,
      location,
      description,
      category,
      const DeepCollectionEquality().hash(_certificateImages),
      const DeepCollectionEquality().hash(_images),
      preservation);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SupplierProductEntityCopyWith<_$_SupplierProductEntity> get copyWith =>
      __$$_SupplierProductEntityCopyWithImpl<_$_SupplierProductEntity>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SupplierProductEntityToJson(
      this,
    );
  }
}

abstract class _SupplierProductEntity implements SupplierProductEntity {
  const factory _SupplierProductEntity(
      {final int? id,
      final String? productName,
      final int? expectedPrice,
      final String? sku,
      final String? location,
      final String? description,
      final CategoryEntity? category,
      final List<String>? certificateImages,
      final List<String>? images,
      final String? preservation}) = _$_SupplierProductEntity;

  factory _SupplierProductEntity.fromJson(Map<String, dynamic> json) =
      _$_SupplierProductEntity.fromJson;

  @override
  int? get id;
  @override
  String? get productName;
  @override
  int? get expectedPrice;
  @override
  String? get sku;
  @override
  String? get location;
  @override
  String? get description;
  @override
  CategoryEntity? get category;
  @override
  List<String>? get certificateImages;
  @override
  List<String>? get images;
  @override
  String? get preservation;
  @override
  @JsonKey(ignore: true)
  _$$_SupplierProductEntityCopyWith<_$_SupplierProductEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
