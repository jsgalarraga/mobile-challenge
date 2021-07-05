import 'package:cached_network_image/cached_network_image.dart';
import 'package:challenge/cubit/user_challenges_cubit.dart';
import 'package:challenge/data/model/challenge_entity.dart';
import 'package:challenge/data/model/user_challenges_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChallengeListItem extends StatelessWidget {
  final ChallengeEntity challenge;
  final Key key;

  const ChallengeListItem({required this.key, required this.challenge})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      // Rules out a challenge on swipe action
      key: key,
      onDismissed: (direction) {
        BlocProvider.of<UserChallengesCubit>(context)
            .ruleOutChallenge(challenge.id);
      },
      child: Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Stack(
              children: [
                Container(
                  height: 120,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: CachedNetworkImageProvider(challenge.photoURL),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  left: 8,
                  right: 8,
                  bottom: 16,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      if (challenge.interests.isNotEmpty &&
                          challenge.interests.first.isNotEmpty)
                        ChallengeTypeCard(
                          type: challenge.interests.first,
                        ),
                      Expanded(
                        child: Text(
                          '${challenge.daysToEffect} days',
                          maxLines: 2,
                          textAlign: TextAlign.end,
                          style: Theme.of(context).accentTextTheme.headline6,
                        ),
                      )
                    ],
                  ),
                ),
                Positioned(
                  right: 8,
                  top: 8,
                  child: ChallengeLikeButton(challenge: challenge),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child: Text(
                challenge.title,
                style: Theme.of(context).textTheme.headline6,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ChallengeTypeCard extends StatelessWidget {
  final String type;

  const ChallengeTypeCard({Key? key, required this.type}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        type,
        style: Theme.of(context).accentTextTheme.subtitle2,
        textAlign: TextAlign.center,
      ),
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 7),
      decoration: BoxDecoration(
          color: Colors.white24,
          borderRadius: BorderRadius.circular(6),
          border: Border.all(color: Colors.white, width: 1)),
    );
  }
}

class ChallengeLikeButton extends StatelessWidget {
  /// Creates a button that shows if the challenge is liked or not
  /// and allows the user to like or remove the like from the challenge
  final ChallengeEntity challenge;

  const ChallengeLikeButton({Key? key, required this.challenge})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserChallengesCubit, UserChallengesState>(
      builder: (context, state) {
        UserChallengesEntity userChallenges =
            (state as UserChallengesUpdated).userChallenges;
        const Icon likedIcon = Icon(Icons.star);
        const Icon notLikedIcon = Icon(Icons.star_border_outlined);
        Icon likeIcon = userChallenges.likedChallenges.contains(challenge.id)
            ? likedIcon
            : notLikedIcon;

        return ClipRRect(
          borderRadius: BorderRadius.circular(6),
          child: Material(
            color: Colors.white38,
            child: InkWell(
              onTap: (() {
                BlocProvider.of<UserChallengesCubit>(context)
                    .toggleLikeChallenge(challenge.id);
              }),
              child: Padding(
                padding: const EdgeInsets.all(2),
                child: likeIcon,
              ),
            ),
          ),
        );
      },
    );
  }
}
