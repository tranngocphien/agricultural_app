// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'supplier_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SupplierEntity _$SupplierEntityFromJson(Map<String, dynamic> json) {
  return _SupplierEntity.fromJson(json);
}

/// @nodoc
mixin _$SupplierEntity {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get brandImage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SupplierEntityCopyWith<SupplierEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SupplierEntityCopyWith<$Res> {
  factory $SupplierEntityCopyWith(
          SupplierEntity value, $Res Function(SupplierEntity) then) =
      _$SupplierEntityCopyWithImpl<$Res, SupplierEntity>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? location,
      String? description,
      String? brandImage});
}

/// @nodoc
class _$SupplierEntityCopyWithImpl<$Res, $Val extends SupplierEntity>
    implements $SupplierEntityCopyWith<$Res> {
  _$SupplierEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? location = freezed,
    Object? description = freezed,
    Object? brandImage = freezed,
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
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      brandImage: freezed == brandImage
          ? _value.brandImage
          : brandImage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SupplierEntityCopyWith<$Res>
    implements $SupplierEntityCopyWith<$Res> {
  factory _$$_SupplierEntityCopyWith(
          _$_SupplierEntity value, $Res Function(_$_SupplierEntity) then) =
      __$$_SupplierEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? location,
      String? description,
      String? brandImage});
}

/// @nodoc
class __$$_SupplierEntityCopyWithImpl<$Res>
    extends _$SupplierEntityCopyWithImpl<$Res, _$_SupplierEntity>
    implements _$$_SupplierEntityCopyWith<$Res> {
  __$$_SupplierEntityCopyWithImpl(
      _$_SupplierEntity _value, $Res Function(_$_SupplierEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? location = freezed,
    Object? description = freezed,
    Object? brandImage = freezed,
  }) {
    return _then(_$_SupplierEntity(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      brandImage: freezed == brandImage
          ? _value.brandImage
          : brandImage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SupplierEntity implements _SupplierEntity {
  const _$_SupplierEntity(
      {this.id, this.name, this.location, this.description, this.brandImage});

  factory _$_SupplierEntity.fromJson(Map<String, dynamic> json) =>
      _$$_SupplierEntityFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? location;
  @override
  final String? description;
  @override
  final String? brandImage;

  @override
  String toString() {
    return 'SupplierEntity(id: $id, name: $name, location: $location, description: $description, brandImage: $brandImage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SupplierEntity &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.brandImage, brandImage) ||
                other.brandImage == brandImage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, location, description, brandImage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SupplierEntityCopyWith<_$_SupplierEntity> get copyWith =>
      __$$_SupplierEntityCopyWithImpl<_$_SupplierEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SupplierEntityToJson(
      this,
    );
  }
}

abstract class _SupplierEntity implements SupplierEntity {
  const factory _SupplierEntity(
      {final int? id,
      final String? name,
      final String? location,
      final String? description,
      final String? brandImage}) = _$_SupplierEntity;

  factory _SupplierEntity.fromJson(Map<String, dynamic> json) =
      _$_SupplierEntity.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get location;
  @override
  String? get description;
  @override
  String? get brandImage;
  @override
  @JsonKey(ignore: true)
  _$$_SupplierEntityCopyWith<_$_SupplierEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
