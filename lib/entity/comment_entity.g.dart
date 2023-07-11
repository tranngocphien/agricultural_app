// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CommentEntity _$$_CommentEntityFromJson(Map<String, dynamic> json) =>
    _$_CommentEntity(
      id: json['id'] as int?,
      content: json['content'] as String?,
      rate: json['rate'] as int?,
      owner: json['owner'] == null
          ? null
          : AccountInfoEntity.fromJson(json['owner'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_CommentEntityToJson(_$_CommentEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'content': instance.content,
      'rate': instance.rate,
      'owner': instance.owner,
    };
