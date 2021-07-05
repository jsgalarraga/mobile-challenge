part of 'challenges_cubit.dart';

@immutable
abstract class ChallengesState {}

class ChallengesUpdated extends ChallengesState {
  final List<ChallengeEntity> challenges;

  ChallengesUpdated({required this.challenges});
}
