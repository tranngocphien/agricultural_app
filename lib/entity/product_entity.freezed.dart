// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductEntity _$ProductEntityFromJson(Map<String, dynamic> json) {
  return _ProductEntity.fromJson(json);
}

/// @nodoc
mixin _$ProductEntity {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  int? get price => throw _privateConstructorUsedError;
  String? get sku => throw _privateConstructorUsedError;
  int? get stock => throw _privateConstructorUsedError;
  CategoryEntity? get category => throw _privateConstructorUsedError;
  String? get origin => throw _privateConstructorUsedError;
  List<String>? get certificateImages => throw _privateConstructorUsedError;
  List<String>? get images => throw _privateConstructorUsedError;
  String? get preservation => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductEntityCopyWith<ProductEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductEntityCopyWith<$Res> {
  factory $ProductEntityCopyWith(
          ProductEntity value, $Res Function(ProductEntity) then) =
      _$ProductEntityCopyWithImpl<$Res, ProductEntity>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      int? price,
      String? sku,
      int? stock,
      CategoryEntity? category,
      String? origin,
      List<String>? certificateImages,
      List<String>? images,
      String? preservation});

  $CategoryEntityCopyWith<$Res>? get category;
}

/// @nodoc
class _$ProductEntityCopyWithImpl<$Res, $Val extends ProductEntity>
    implements $ProductEntityCopyWith<$Res> {
  _$ProductEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? price = freezed,
    Object? sku = freezed,
    Object? stock = freezed,
    Object? category = freezed,
    Object? origin = freezed,
    Object? certificateImages = freezed,
    Object? images = freezed,
    Object? preservation = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      sku: freezed == sku
          ? _value.sku
          : sku // ignore: cast_nullable_to_non_nullable
              as String?,
      stock: freezed == stock
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as int?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CategoryEntity?,
      origin: freezed == origin
          ? _value.origin
          : origin // ignore: cast_nullable_to_non_nullable
              as String?,
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
abstract class _$$_ProductEntityCopyWith<$Res>
    implements $ProductEntityCopyWith<$Res> {
  factory _$$_ProductEntityCopyWith(
          _$_ProductEntity value, $Res Function(_$_ProductEntity) then) =
      __$$_ProductEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      int? price,
      String? sku,
      int? stock,
      CategoryEntity? category,
      String? origin,
      List<String>? certificateImages,
      List<String>? images,
      String? preservation});

  @override
  $CategoryEntityCopyWith<$Res>? get category;
}

/// @nodoc
class __$$_ProductEntityCopyWithImpl<$Res>
    extends _$ProductEntityCopyWithImpl<$Res, _$_ProductEntity>
    implements _$$_ProductEntityCopyWith<$Res> {
  __$$_ProductEntityCopyWithImpl(
      _$_ProductEntity _value, $Res Function(_$_ProductEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? price = freezed,
    Object? sku = freezed,
    Object? stock = freezed,
    Object? category = freezed,
    Object? origin = freezed,
    Object? certificateImages = freezed,
    Object? images = freezed,
    Object? preservation = freezed,
  }) {
    return _then(_$_ProductEntity(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      sku: freezed == sku
          ? _value.sku
          : sku // ignore: cast_nullable_to_non_nullable
              as String?,
      stock: freezed == stock
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as int?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CategoryEntity?,
      origin: freezed == origin
          ? _value.origin
          : origin // ignore: cast_nullable_to_non_nullable
              as String?,
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
class _$_ProductEntity implements _ProductEntity {
  const _$_ProductEntity(
      {this.id,
      this.name,
      this.price,
      this.sku,
      this.stock,
      this.category,
      this.origin,
      final List<String>? certificateImages,
      final List<String>? images,
      this.preservation})
      : _certificateImages = certificateImages,
        _images = images;

  factory _$_ProductEntity.fromJson(Map<String, dynamic> json) =>
      _$$_ProductEntityFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final int? price;
  @override
  final String? sku;
  @override
  final int? stock;
  @override
  final CategoryEntity? category;
  @override
  final String? origin;
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
    return 'ProductEntity(id: $id, name: $name, price: $price, sku: $sku, stock: $stock, category: $category, origin: $origin, certificateImages: $certificateImages, images: $images, preservation: $preservation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductEntity &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.sku, sku) || other.sku == sku) &&
            (identical(other.stock, stock) || other.stock == stock) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.origin, origin) || other.origin == origin) &&
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
      name,
      price,
      sku,
      stock,
      category,
      origin,
      const DeepCollectionEquality().hash(_certificateImages),
      const DeepCollectionEquality().hash(_images),
      preservation);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductEntityCopyWith<_$_ProductEntity> get copyWith =>
      __$$_ProductEntityCopyWithImpl<_$_ProductEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductEntityToJson(
      this,
    );
  }
}

abstract class _ProductEntity implements ProductEntity {
  const factory _ProductEntity(
      {final int? id,
      final String? name,
      final int? price,
      final String? sku,
      final int? stock,
      final CategoryEntity? category,
      final String? origin,
      final List<String>? certificateImages,
      final List<String>? images,
      final String? preservation}) = _$_ProductEntity;

  factory _ProductEntity.fromJson(Map<String, dynamic> json) =
      _$_ProductEntity.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  int? get price;
  @override
  String? get sku;
  @override
  int? get stock;
  @override
  CategoryEntity? get category;
  @override
  String? get origin;
  @override
  List<String>? get certificateImages;
  @override
  List<String>? get images;
  @override
  String? get preservation;
  @override
  @JsonKey(ignore: true)
  _$$_ProductEntityCopyWith<_$_ProductEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
