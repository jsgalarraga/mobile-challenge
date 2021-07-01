import 'package:json_annotation/json_annotation.dart';

part 'challenge_author_entity.g.dart';

@JsonSerializable()
class ChallengeAuthorEntity {
  final int id;
  final String name;
  final String photoURL;

  ChallengeAuthorEntity(this.id, this.name, this.photoURL);

  factory ChallengeAuthorEntity.fromJson(Map<String, dynamic> json) =>
      _$ChallengeAuthorEntityFromJson(json);
}