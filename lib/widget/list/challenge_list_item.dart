import 'package:cached_network_image/cached_network_image.dart';
import 'package:challenge/data/model/challenge_entity.dart';
import 'package:flutter/material.dart';

class ChallengeListItem extends StatelessWidget {
  final ChallengeEntity challenge;

  const ChallengeListItem({Key? key, required this.challenge}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
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
              )
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
