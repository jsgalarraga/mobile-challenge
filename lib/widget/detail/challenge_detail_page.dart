import 'package:cached_network_image/cached_network_image.dart';
import 'package:challenge/data/model/challenge_entity.dart';
import 'package:flutter/material.dart';

class ChallengeDetailPage extends StatelessWidget {
  final ChallengeEntity challenge;

  const ChallengeDetailPage({Key? key, required this.challenge})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(200),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(24),
            bottomRight: Radius.circular(24),
          ),
          child: AppBar(
            flexibleSpace: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: CachedNetworkImageProvider(challenge.photoURL),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 20.0),
        child: ListView(
          children: [
            Text(
              challenge.title,
              style: Theme.of(context).textTheme.headline6,
            ),
            Padding(padding: const EdgeInsets.only(top: 12)),
            Text(
              challenge.description,
              style: Theme.of(context).textTheme.subtitle1,
            ),
            Padding(padding: const EdgeInsets.only(top: 32)),
            Row(
              children: [
                CircleAvatar(
                  backgroundImage:
                      CachedNetworkImageProvider(challenge.author.photoURL),
                ),
                Padding(padding: const EdgeInsets.only(left: 12)),
                Text(
                  challenge.author.name,
                  style: Theme.of(context).textTheme.subtitle1,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
