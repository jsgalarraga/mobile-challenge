import 'package:challenge/data/challenge_repository.dart';
import 'package:challenge/data/model/challenge_entity.dart';
import 'package:challenge/widget/list/challenge_list_item.dart';
import 'package:flutter/material.dart';

class ChallengeListPage extends StatefulWidget {
  ChallengeListPage({Key? key}) : super(key: key);

  @override
  _ChallengeListPageState createState() => _ChallengeListPageState();
}

class _ChallengeListPageState extends State<ChallengeListPage> {
  final ChallengeRepository _challengeRepository = ChallengeRepository();
  List<ChallengeEntity> challenges = [];

  @override
  void initState() {
    super.initState();
    final challenges = _challengeRepository.getChallenges();
    setState(() {
      this.challenges = challenges;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Challenges"),
      ),
      body: ListView.separated(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(height: 8);
        },
        itemBuilder: (context, index) =>
            ChallengeListItem(challenge: challenges[index]),
        itemCount: challenges.length,
      ),
    );
  }
}
