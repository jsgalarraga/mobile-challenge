// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'challenge_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChallengeEntity _$ChallengeEntityFromJson(Map<String, dynamic> json) {
  return ChallengeEntity(
    json['id'] as int,
    json['title'] as String,
    json['description'] as String,
    (json['interests'] as List<dynamic>).map((e) => e as String).toList(),
    json['instructions'] as String,
    json['daysToEffect'] as int,
    json['photoURL'] as String,
    json['sortingScore'] as int,
    ChallengeAuthorEntity.fromJson(json['author'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ChallengeEntityToJson(ChallengeEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'interests': instance.interests,
      'instructions': instance.instructions,
      'daysToEffect': instance.daysToEffect,
      'photoURL': instance.photoURL,
      'sortingScore': instance.sortingScore,
      'author': instance.author,
    };
