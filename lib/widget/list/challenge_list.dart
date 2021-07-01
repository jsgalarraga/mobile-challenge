import 'package:challenge/data/challenge_repository.dart';
import 'package:flutter/material.dart';

class ChallengeList extends StatefulWidget {
  ChallengeList({Key? key}) : super(key: key);

  @override
  _ChallengeListState createState() => _ChallengeListState();
}

class _ChallengeListState extends State<ChallengeList> {
  final ChallengeRepository _challengeRepository = ChallengeRepository();
  var challenges = [];

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
      body: Container(),
    );
  }
}
