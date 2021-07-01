import 'package:challenge/data/model/challenge_entity.dart';
import 'package:json_annotation/json_annotation.dart';

part 'challenges_entity.g.dart';

@JsonSerializable()
class ChallengesEntity {
  final List<ChallengeEntity> challenges;

  ChallengesEntity(this.challenges);

  factory ChallengesEntity.fromJson(Map<String, dynamic> json) =>
      _$ChallengesEntityFromJson(json);
}