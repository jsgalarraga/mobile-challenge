import 'package:cached_network_image/cached_network_image.dart';
import 'package:challenge/cubit/user_challenges_cubit.dart';
import 'package:challenge/data/model/challenge_entity.dart';
import 'package:challenge/data/model/user_challenges_entity.dart';
import 'package:challenge/widget/detail/challenge_detail_page.dart';
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
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => ChallengeDetailPage(challenge: challenge),
            ),
          );
        },
        child: Card(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(5),
                  topRight: Radius.circular(5),
                ),
                child: Container(
                  height: 120,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: CachedNetworkImageProvider(challenge.photoURL),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * .7,
                      child: Text(
                        challenge.title,
                        style: Theme.of(context).textTheme.headline6,
                      ),
                    ),
                    ChallengeLikeButton(challenge: challenge),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 16.0,
                  right: 16.0,
                  bottom: 16.0,
                ),
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
                        style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontSize: 18,
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
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
        color: Theme.of(context).primaryColor.withOpacity(0.8),
        borderRadius: BorderRadius.circular(6),
      ),
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
        const Icon likedIcon = Icon(
          Icons.star,
          color: Colors.amber,
        );
        const Icon notLikedIcon = Icon(
          Icons.star_border_outlined,
          color: Colors.black45,
        );
        Icon likeIcon = userChallenges.likedChallenges.contains(challenge.id)
            ? likedIcon
            : notLikedIcon;

        return ClipRRect(
          borderRadius: BorderRadius.circular(6),
          child: Material(
            color: Colors.white60,
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
