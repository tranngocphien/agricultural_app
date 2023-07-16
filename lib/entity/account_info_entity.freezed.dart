// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account_info_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AccountInfoEntity _$AccountInfoEntityFromJson(Map<String, dynamic> json) {
  return _AccountInfoEntity.fromJson(json);
}

/// @nodoc
mixin _$AccountInfoEntity {
  int? get id => throw _privateConstructorUsedError;
  String? get username => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get phoneNumber => throw _privateConstructorUsedError;
  String? get firstName => throw _privateConstructorUsedError;
  String? get lastName => throw _privateConstructorUsedError;
  String? get avatar => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AccountInfoEntityCopyWith<AccountInfoEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountInfoEntityCopyWith<$Res> {
  factory $AccountInfoEntityCopyWith(
          AccountInfoEntity value, $Res Function(AccountInfoEntity) then) =
      _$AccountInfoEntityCopyWithImpl<$Res, AccountInfoEntity>;
  @useResult
  $Res call(
      {int? id,
      String? username,
      String? email,
      String? phoneNumber,
      String? firstName,
      String? lastName,
      String? avatar});
}

/// @nodoc
class _$AccountInfoEntityCopyWithImpl<$Res, $Val extends AccountInfoEntity>
    implements $AccountInfoEntityCopyWith<$Res> {
  _$AccountInfoEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? username = freezed,
    Object? email = freezed,
    Object? phoneNumber = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? avatar = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AccountInfoEntityCopyWith<$Res>
    implements $AccountInfoEntityCopyWith<$Res> {
  factory _$$_AccountInfoEntityCopyWith(_$_AccountInfoEntity value,
          $Res Function(_$_AccountInfoEntity) then) =
      __$$_AccountInfoEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? username,
      String? email,
      String? phoneNumber,
      String? firstName,
      String? lastName,
      String? avatar});
}

/// @nodoc
class __$$_AccountInfoEntityCopyWithImpl<$Res>
    extends _$AccountInfoEntityCopyWithImpl<$Res, _$_AccountInfoEntity>
    implements _$$_AccountInfoEntityCopyWith<$Res> {
  __$$_AccountInfoEntityCopyWithImpl(
      _$_AccountInfoEntity _value, $Res Function(_$_AccountInfoEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? username = freezed,
    Object? email = freezed,
    Object? phoneNumber = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? avatar = freezed,
  }) {
    return _then(_$_AccountInfoEntity(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AccountInfoEntity implements _AccountInfoEntity {
  const _$_AccountInfoEntity(
      {this.id,
      this.username,
      this.email,
      this.phoneNumber,
      this.firstName,
      this.lastName,
      this.avatar});

  factory _$_AccountInfoEntity.fromJson(Map<String, dynamic> json) =>
      _$$_AccountInfoEntityFromJson(json);

  @override
  final int? id;
  @override
  final String? username;
  @override
  final String? email;
  @override
  final String? phoneNumber;
  @override
  final String? firstName;
  @override
  final String? lastName;
  @override
  final String? avatar;

  @override
  String toString() {
    return 'AccountInfoEntity(id: $id, username: $username, email: $email, phoneNumber: $phoneNumber, firstName: $firstName, lastName: $lastName, avatar: $avatar)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AccountInfoEntity &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.avatar, avatar) || other.avatar == avatar));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, username, email, phoneNumber,
      firstName, lastName, avatar);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AccountInfoEntityCopyWith<_$_AccountInfoEntity> get copyWith =>
      __$$_AccountInfoEntityCopyWithImpl<_$_AccountInfoEntity>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AccountInfoEntityToJson(
      this,
    );
  }
}

abstract class _AccountInfoEntity implements AccountInfoEntity {
  const factory _AccountInfoEntity(
      {final int? id,
      final String? username,
      final String? email,
      final String? phoneNumber,
      final String? firstName,
      final String? lastName,
      final String? avatar}) = _$_AccountInfoEntity;

  factory _AccountInfoEntity.fromJson(Map<String, dynamic> json) =
      _$_AccountInfoEntity.fromJson;

  @override
  int? get id;
  @override
  String? get username;
  @override
  String? get email;
  @override
  String? get phoneNumber;
  @override
  String? get firstName;
  @override
  String? get lastName;
  @override
  String? get avatar;
  @override
  @JsonKey(ignore: true)
  _$$_AccountInfoEntityCopyWith<_$_AccountInfoEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
