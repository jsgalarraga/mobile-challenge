import 'package:json_annotation/json_annotation.dart';

part 'user_challenges_entity.g.dart';

@JsonSerializable()
class UserChallengesEntity {
  /// Stores the challenges that the user liked and ruled out
  final List<int> likedChallenges;
  final List<int> ruledOutChallenges;

  UserChallengesEntity(
      {List<int>? likedChallenges, List<int>? ruledOutChallenges})
      : likedChallenges = likedChallenges ?? <int>[],
        ruledOutChallenges = ruledOutChallenges ?? <int>[];

  factory UserChallengesEntity.fromJson(Map<String, dynamic> json) =>
      _$UserChallengesEntityFromJson(json);

  Map<String, dynamic> toJson(UserChallengesEntity instance) =>
      _$UserChallengesEntityToJson(instance);
}
