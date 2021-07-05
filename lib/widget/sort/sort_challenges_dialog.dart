import 'package:challenge/cubit/challenges_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SortChallengeDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Sort by:'),
      content: Container(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SortButton(
              title: 'Liked first',
              onPressed: () {
                BlocProvider.of<ChallengesCubit>(context).sortByLiked();
              },
            ),
            SortButton(
              title: 'Days to complete desc',
              onPressed: () {
                BlocProvider.of<ChallengesCubit>(context).sortByDaysDesc();
              },
            ),
            SortButton(
              title: 'Sorting score desc',
              onPressed: () {
                BlocProvider.of<ChallengesCubit>(context).sortByScoreDesc();
              },
            ),
          ],
        ),
      ),
    );
  }
}

class SortButton extends StatelessWidget {
  // Sorts challenges based on function passed. Needs a sorting function in ChallengesCubit
  final String title;
  final Function() onPressed;

  const SortButton({Key? key, required this.title, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: TextButton(
        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
          backgroundColor:
              MaterialStateProperty.all<Color>(Theme.of(context).accentColor),
        ),
        onPressed: () {
          onPressed();
          Navigator.of(context).pop();
        },
        child: Text(title),
      ),
    );
  }
}
