import 'package:challenge/cubit/challenges_cubit.dart';
import 'package:challenge/cubit/user_challenges_cubit.dart';
import 'package:challenge/data/model/challenge_entity.dart';
import 'package:challenge/data/model/user_challenges_entity.dart';
import 'package:challenge/widget/list/challenge_list_item.dart';
import 'package:challenge/widget/sort/sort_challenges_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChallengeListPage extends StatefulWidget {
  ChallengeListPage({Key? key}) : super(key: key);

  @override
  _ChallengeListPageState createState() => _ChallengeListPageState();
}

class _ChallengeListPageState extends State<ChallengeListPage> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<ChallengesCubit>(context).getChallenges();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Challenges"),
        actions: [
          IconButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return SortChallengeDialog();
                },
              );
            },
            icon: Icon(Icons.sort_rounded),
          )
        ],
      ),
      body: BlocBuilder<ChallengesCubit, ChallengesState>(
        builder: (context, state) {
          List<ChallengeEntity> challenges =
              (state as ChallengesUpdated).challenges;
          return BlocBuilder<UserChallengesCubit, UserChallengesState>(
            /// Contains an updated list of all the challenges that have not been ruled out
            builder: (context, state) {
              UserChallengesEntity userChallenges =
                  (state as UserChallengesUpdated).userChallenges;
              List<ChallengeEntity> activeChallenges = challenges
                  .where((element) =>
                      !userChallenges.ruledOutChallenges.contains(element.id))
                  .toList();
              return ListView.separated(
                padding: const EdgeInsets.symmetric(
                  vertical: 8,
                  horizontal: 16,
                ),
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(height: 8);
                },
                itemBuilder: (context, index) {
                  ChallengeEntity challenge = activeChallenges[index];
                  return ChallengeListItem(
                    key: Key('${challenge.id}'),
                    challenge: challenge,
                  );
                },
                itemCount: activeChallenges.length,
              );
            },
          );
        },
      ),
    );
  }
}
