import 'package:freezed_annotation/freezed_annotation.dart';
part 'auth_entity.freezed.dart';
part 'auth_entity.g.dart';

@freezed
class AuthenticateEntity with _$AuthenticateEntity {
  const factory AuthenticateEntity({
    String? token,
    List<String>? roles,
  }) = _AuthenticateEntity;

  factory AuthenticateEntity.fromJson(Map<String, dynamic> json) => _$AuthenticateEntityFromJson(json);

}