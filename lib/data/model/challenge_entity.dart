import 'package:challenge/data/model/challenge_author_entity.dart';
import 'package:json_annotation/json_annotation.dart';

part 'challenge_entity.g.dart';

@JsonSerializable()
class ChallengeEntity {
  final int id;
  final String title;
  final String description;
  final List<String> interests;
  final String instructions;
  final int daysToEffect;
  final String photoURL;
  final int sortingScore;
  final ChallengeAuthorEntity author;

  ChallengeEntity(
      this.id,
      this.title,
      this.description,
      this.interests,
      this.instructions,
      this.daysToEffect,
      this.photoURL,
      this.sortingScore,
      this.author);

  factory ChallengeEntity.fromJson(Map<String, dynamic> json) =>
      _$ChallengeEntityFromJson(json);
}
