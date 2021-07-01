import 'package:challenge/widget/list/challenge_list.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Challenges',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ChallengeList(),
    );
  }
}
