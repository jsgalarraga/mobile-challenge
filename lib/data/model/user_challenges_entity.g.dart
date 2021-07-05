// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_challenges_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserChallengesEntity _$UserChallengesEntityFromJson(Map<String, dynamic> json) {
  return UserChallengesEntity(
    likedChallenges: (json['likedChallenges'] as List<dynamic>?)
        ?.map((e) => e as int)
        .toList(),
    ruledOutChallenges: (json['ruledOutChallenges'] as List<dynamic>?)
        ?.map((e) => e as int)
        .toList(),
  );
}

Map<String, dynamic> _$UserChallengesEntityToJson(
        UserChallengesEntity instance) =>
    <String, dynamic>{
      'likedChallenges': instance.likedChallenges,
      'ruledOutChallenges': instance.ruledOutChallenges,
    };
