import 'package:bloc/bloc.dart';
import 'package:challenge/data/model/user_challenges_entity.dart';
import 'package:meta/meta.dart';

part 'user_challenges_state.dart';

class UserChallengesCubit extends Cubit<UserChallengesState> {
  // Stores updated data about user liked and ruled out challenges
  final UserChallengesEntity userChallenges;

  UserChallengesCubit({required this.userChallenges})
      : super(UserChallengesUpdated(userChallenges: userChallenges));

  bool isChallengeLiked(int id) {
    // Checks whether a challenge is liked or not
    return userChallenges.likedChallenges.contains(id);
  }

  void toggleLikeChallenge(int id) {
    // Changes a liked challenge to not liked and viceversa
    // and updates the challenges
    if (isChallengeLiked(id)) {
      userChallenges.likedChallenges.remove(id);
    } else {
      userChallenges.likedChallenges.add(id);
    }
    emit(UserChallengesUpdated(userChallenges: userChallenges));
  }

  bool isChallengeRuledOut(int id) {
    // Checks whether a challenge is ruled out or not
    return userChallenges.ruledOutChallenges.contains(id);
  }

  void ruleOutChallenge(int id) {
    // Rules out an available challenge and updates the challenges
    if (!isChallengeRuledOut(id)) {
      userChallenges.ruledOutChallenges.add(id);
      emit(UserChallengesUpdated(userChallenges: userChallenges));
    }
  }
}
