import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:grocery_app/entity/account_info_entity.dart';

part 'comment_entity.freezed.dart';

part 'comment_entity.g.dart';

@freezed
class CommentEntity with _$CommentEntity {
  factory CommentEntity ({
    int? id,
    String? content,
    int? rate,
    AccountInfoEntity? owner,
  }) = _CommentEntity;

  factory CommentEntity.fromJson(Map<String, dynamic> json) =>
      _$CommentEntityFromJson(json);
}