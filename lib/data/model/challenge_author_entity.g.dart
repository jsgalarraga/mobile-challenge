// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'challenge_author_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChallengeAuthorEntity _$ChallengeAuthorEntityFromJson(
    Map<String, dynamic> json) {
  return ChallengeAuthorEntity(
    json['id'] as int,
    json['name'] as String,
    json['photoURL'] as String,
  );
}

Map<String, dynamic> _$ChallengeAuthorEntityToJson(
        ChallengeAuthorEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'photoURL': instance.photoURL,
    };
