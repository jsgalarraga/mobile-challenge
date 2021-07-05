import 'package:challenge/cubit/challenges_cubit.dart';
import 'package:challenge/cubit/user_challenges_cubit.dart';
import 'package:challenge/data/model/challenge_entity.dart';
import 'package:challenge/data/model/user_challenges_entity.dart';
import 'package:challenge/widget/list/challenge_list_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class App extends StatelessWidget {
  final UserChallengesEntity userChallenges = UserChallengesEntity();
  final List<ChallengeEntity> challenges = [];

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => UserChallengesCubit(userChallenges: userChallenges),
        ),
        BlocProvider(
          create: (_) => ChallengesCubit(
            challenges: challenges,
            userChallenges: userChallenges,
          ),
        ),
      ],
      child: MaterialApp(
        title: 'Challenges',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: ChallengeListPage(),
      ),
    );
  }
}
