// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'challenges_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChallengesEntity _$ChallengesEntityFromJson(Map<String, dynamic> json) {
  return ChallengesEntity(
    (json['challenges'] as List<dynamic>)
        .map((e) => ChallengeEntity.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$ChallengesEntityToJson(ChallengesEntity instance) =>
    <String, dynamic>{
      'challenges': instance.challenges,
    };
