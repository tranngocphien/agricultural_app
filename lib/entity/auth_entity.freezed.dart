// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AuthenticateEntity _$AuthenticateEntityFromJson(Map<String, dynamic> json) {
  return _AuthenticateEntity.fromJson(json);
}

/// @nodoc
mixin _$AuthenticateEntity {
  String? get token => throw _privateConstructorUsedError;
  List<String>? get roles => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthenticateEntityCopyWith<AuthenticateEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticateEntityCopyWith<$Res> {
  factory $AuthenticateEntityCopyWith(
          AuthenticateEntity value, $Res Function(AuthenticateEntity) then) =
      _$AuthenticateEntityCopyWithImpl<$Res, AuthenticateEntity>;
  @useResult
  $Res call({String? token, List<String>? roles});
}

/// @nodoc
class _$AuthenticateEntityCopyWithImpl<$Res, $Val extends AuthenticateEntity>
    implements $AuthenticateEntityCopyWith<$Res> {
  _$AuthenticateEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = freezed,
    Object? roles = freezed,
  }) {
    return _then(_value.copyWith(
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      roles: freezed == roles
          ? _value.roles
          : roles // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AuthenticateEntityCopyWith<$Res>
    implements $AuthenticateEntityCopyWith<$Res> {
  factory _$$_AuthenticateEntityCopyWith(_$_AuthenticateEntity value,
          $Res Function(_$_AuthenticateEntity) then) =
      __$$_AuthenticateEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? token, List<String>? roles});
}

/// @nodoc
class __$$_AuthenticateEntityCopyWithImpl<$Res>
    extends _$AuthenticateEntityCopyWithImpl<$Res, _$_AuthenticateEntity>
    implements _$$_AuthenticateEntityCopyWith<$Res> {
  __$$_AuthenticateEntityCopyWithImpl(
      _$_AuthenticateEntity _value, $Res Function(_$_AuthenticateEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = freezed,
    Object? roles = freezed,
  }) {
    return _then(_$_AuthenticateEntity(
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      roles: freezed == roles
          ? _value._roles
          : roles // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AuthenticateEntity implements _AuthenticateEntity {
  const _$_AuthenticateEntity({this.token, final List<String>? roles})
      : _roles = roles;

  factory _$_AuthenticateEntity.fromJson(Map<String, dynamic> json) =>
      _$$_AuthenticateEntityFromJson(json);

  @override
  final String? token;
  final List<String>? _roles;
  @override
  List<String>? get roles {
    final value = _roles;
    if (value == null) return null;
    if (_roles is EqualUnmodifiableListView) return _roles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'AuthenticateEntity(token: $token, roles: $roles)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthenticateEntity &&
            (identical(other.token, token) || other.token == token) &&
            const DeepCollectionEquality().equals(other._roles, _roles));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, token, const DeepCollectionEquality().hash(_roles));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthenticateEntityCopyWith<_$_AuthenticateEntity> get copyWith =>
      __$$_AuthenticateEntityCopyWithImpl<_$_AuthenticateEntity>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AuthenticateEntityToJson(
      this,
    );
  }
}

abstract class _AuthenticateEntity implements AuthenticateEntity {
  const factory _AuthenticateEntity(
      {final String? token, final List<String>? roles}) = _$_AuthenticateEntity;

  factory _AuthenticateEntity.fromJson(Map<String, dynamic> json) =
      _$_AuthenticateEntity.fromJson;

  @override
  String? get token;
  @override
  List<String>? get roles;
  @override
  @JsonKey(ignore: true)
  _$$_AuthenticateEntityCopyWith<_$_AuthenticateEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
