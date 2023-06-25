// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CategoryEntity _$CategoryEntityFromJson(Map<String, dynamic> json) {
  return _CategoryEntity.fromJson(json);
}

/// @nodoc
mixin _$CategoryEntity {
  int? get id => throw _privateConstructorUsedError;
  String? get categoryName => throw _privateConstructorUsedError;
  String? get categoryThumb => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryEntityCopyWith<CategoryEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryEntityCopyWith<$Res> {
  factory $CategoryEntityCopyWith(
          CategoryEntity value, $Res Function(CategoryEntity) then) =
      _$CategoryEntityCopyWithImpl<$Res, CategoryEntity>;
  @useResult
  $Res call({int? id, String? categoryName, String? categoryThumb});
}

/// @nodoc
class _$CategoryEntityCopyWithImpl<$Res, $Val extends CategoryEntity>
    implements $CategoryEntityCopyWith<$Res> {
  _$CategoryEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? categoryName = freezed,
    Object? categoryThumb = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      categoryName: freezed == categoryName
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryThumb: freezed == categoryThumb
          ? _value.categoryThumb
          : categoryThumb // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CategoryEntityCopyWith<$Res>
    implements $CategoryEntityCopyWith<$Res> {
  factory _$$_CategoryEntityCopyWith(
          _$_CategoryEntity value, $Res Function(_$_CategoryEntity) then) =
      __$$_CategoryEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? categoryName, String? categoryThumb});
}

/// @nodoc
class __$$_CategoryEntityCopyWithImpl<$Res>
    extends _$CategoryEntityCopyWithImpl<$Res, _$_CategoryEntity>
    implements _$$_CategoryEntityCopyWith<$Res> {
  __$$_CategoryEntityCopyWithImpl(
      _$_CategoryEntity _value, $Res Function(_$_CategoryEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? categoryName = freezed,
    Object? categoryThumb = freezed,
  }) {
    return _then(_$_CategoryEntity(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      categoryName: freezed == categoryName
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryThumb: freezed == categoryThumb
          ? _value.categoryThumb
          : categoryThumb // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CategoryEntity implements _CategoryEntity {
  const _$_CategoryEntity({this.id, this.categoryName, this.categoryThumb});

  factory _$_CategoryEntity.fromJson(Map<String, dynamic> json) =>
      _$$_CategoryEntityFromJson(json);

  @override
  final int? id;
  @override
  final String? categoryName;
  @override
  final String? categoryThumb;

  @override
  String toString() {
    return 'CategoryEntity(id: $id, categoryName: $categoryName, categoryThumb: $categoryThumb)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CategoryEntity &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.categoryName, categoryName) ||
                other.categoryName == categoryName) &&
            (identical(other.categoryThumb, categoryThumb) ||
                other.categoryThumb == categoryThumb));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, categoryName, categoryThumb);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CategoryEntityCopyWith<_$_CategoryEntity> get copyWith =>
      __$$_CategoryEntityCopyWithImpl<_$_CategoryEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CategoryEntityToJson(
      this,
    );
  }
}

abstract class _CategoryEntity implements CategoryEntity {
  const factory _CategoryEntity(
      {final int? id,
      final String? categoryName,
      final String? categoryThumb}) = _$_CategoryEntity;

  factory _CategoryEntity.fromJson(Map<String, dynamic> json) =
      _$_CategoryEntity.fromJson;

  @override
  int? get id;
  @override
  String? get categoryName;
  @override
  String? get categoryThumb;
  @override
  @JsonKey(ignore: true)
  _$$_CategoryEntityCopyWith<_$_CategoryEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
