import 'package:freezed_annotation/freezed_annotation.dart';
part 'payment_type.freezed.dart';
part 'payment_type.g.dart';

@freezed
class PaymentTypeEntity with _$PaymentTypeEntity {
  const factory PaymentTypeEntity({
    int? id,
    String? name,
  }) = _PaymentTypeEntity;

  factory PaymentTypeEntity.fromJson(Map<String, dynamic> json) =>
      _$PaymentTypeEntityFromJson(json);
}