import 'package:bloc/bloc.dart';
import 'package:challenge/data/challenge_repository.dart';
import 'package:challenge/data/model/challenge_entity.dart';
import 'package:challenge/data/model/user_challenges_entity.dart';
import 'package:meta/meta.dart';

part 'challenges_state.dart';

class ChallengesCubit extends Cubit<ChallengesState> {
  List<ChallengeEntity> challenges;
  final UserChallengesEntity userChallenges;
  final ChallengeRepository _challengeRepository = ChallengeRepository();

  ChallengesCubit({required this.challenges, required this.userChallenges})
      : super(ChallengesUpdated(challenges: challenges));

  void getChallenges() {
    challenges = _challengeRepository.getChallenges();
    emit(ChallengesUpdated(challenges: challenges));
  }

  void sortByLiked() {
    challenges.sort((a, b) {
      if (userChallenges.likedChallenges.contains(a.id)) return -1;
      return 1;
    });
    emit(ChallengesUpdated(challenges: challenges));
  }

  void sortByDaysDesc() {
    challenges.sort((a, b) {
      return b.daysToEffect - a.daysToEffect;
    });
    emit(ChallengesUpdated(challenges: challenges));
  }

  void sortByScoreDesc() {
    challenges.sort((a, b) {
      return b.sortingScore - a.sortingScore;
    });
    emit(ChallengesUpdated(challenges: challenges));
  }
}
