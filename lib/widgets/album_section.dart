import 'package:flutter/material.dart';
import 'package:pop_music_concerts/data/album.dart';
import 'package:pop_music_concerts/providers/music_provider.dart';
import 'package:pop_music_concerts/widgets/track_card.dart';
import 'package:provider/provider.dart';

class AlbumSection extends StatelessWidget {
  const AlbumSection({
    Key? key,
    required this.album,
  }) : super(key: key);

  final Album album;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: header(context),
    );
  }

  Widget trackList(BuildContext context) {
    return Column(
      children: [],
    );
  }

  Widget header(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SizedBox(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Image.asset(
                album.cover,
                fit: BoxFit.cover,
              ),
            ),
            // TODO (2): Style with headline 4 and color white
            // TODO (3): textAlign = center
            Text(album.title),
            // TODO (4): Style with headline 6 and color grey
            // TODO (5): textAlign = center
            Text(album.artistName),
          ],
        ),
      ),
    );
  }
}
