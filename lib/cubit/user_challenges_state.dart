part of 'user_challenges_cubit.dart';

@immutable
abstract class UserChallengesState {}

class UserChallengesUpdated extends UserChallengesState {
  final UserChallengesEntity userChallenges;

  UserChallengesUpdated({required this.userChallenges});
}
