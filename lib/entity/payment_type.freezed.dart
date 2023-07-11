// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PaymentTypeEntity _$PaymentTypeEntityFromJson(Map<String, dynamic> json) {
  return _PaymentTypeEntity.fromJson(json);
}

/// @nodoc
mixin _$PaymentTypeEntity {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaymentTypeEntityCopyWith<PaymentTypeEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentTypeEntityCopyWith<$Res> {
  factory $PaymentTypeEntityCopyWith(
          PaymentTypeEntity value, $Res Function(PaymentTypeEntity) then) =
      _$PaymentTypeEntityCopyWithImpl<$Res, PaymentTypeEntity>;
  @useResult
  $Res call({int? id, String? name});
}

/// @nodoc
class _$PaymentTypeEntityCopyWithImpl<$Res, $Val extends PaymentTypeEntity>
    implements $PaymentTypeEntityCopyWith<$Res> {
  _$PaymentTypeEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PaymentTypeEntityCopyWith<$Res>
    implements $PaymentTypeEntityCopyWith<$Res> {
  factory _$$_PaymentTypeEntityCopyWith(_$_PaymentTypeEntity value,
          $Res Function(_$_PaymentTypeEntity) then) =
      __$$_PaymentTypeEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? name});
}

/// @nodoc
class __$$_PaymentTypeEntityCopyWithImpl<$Res>
    extends _$PaymentTypeEntityCopyWithImpl<$Res, _$_PaymentTypeEntity>
    implements _$$_PaymentTypeEntityCopyWith<$Res> {
  __$$_PaymentTypeEntityCopyWithImpl(
      _$_PaymentTypeEntity _value, $Res Function(_$_PaymentTypeEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_$_PaymentTypeEntity(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PaymentTypeEntity implements _PaymentTypeEntity {
  const _$_PaymentTypeEntity({this.id, this.name});

  factory _$_PaymentTypeEntity.fromJson(Map<String, dynamic> json) =>
      _$$_PaymentTypeEntityFromJson(json);

  @override
  final int? id;
  @override
  final String? name;

  @override
  String toString() {
    return 'PaymentTypeEntity(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaymentTypeEntity &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PaymentTypeEntityCopyWith<_$_PaymentTypeEntity> get copyWith =>
      __$$_PaymentTypeEntityCopyWithImpl<_$_PaymentTypeEntity>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PaymentTypeEntityToJson(
      this,
    );
  }
}

abstract class _PaymentTypeEntity implements PaymentTypeEntity {
  const factory _PaymentTypeEntity({final int? id, final String? name}) =
      _$_PaymentTypeEntity;

  factory _PaymentTypeEntity.fromJson(Map<String, dynamic> json) =
      _$_PaymentTypeEntity.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$_PaymentTypeEntityCopyWith<_$_PaymentTypeEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
