import 'package:freezed_annotation/freezed_annotation.dart';

part 'account_info_entity.freezed.dart';
part 'account_info_entity.g.dart';
@freezed
class AccountInfoEntity with _$AccountInfoEntity {
  const factory AccountInfoEntity ({
    int? id,
    String? username,
    String? email,
    String? phoneNumber,
    String? firstName,
    String? lastName,
    String? avatar
}) = _AccountInfoEntity;

  factory AccountInfoEntity.fromJson(Map<String, dynamic> json) => _$AccountInfoEntityFromJson(json);
}