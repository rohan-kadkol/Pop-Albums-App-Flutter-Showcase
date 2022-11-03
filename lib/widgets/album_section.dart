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
    // TODO (4): Display header()
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
    // TODO (5): Display column with album art, album name, and artist name
    return SizedBox(
      height: 300,
      child: SizedBox(
        height: 300,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Image.asset(
                album.cover,
                fit: BoxFit.cover,
              ),
            ),
            Text(album.title),
            Text(album.artistName)
          ],
        ),
      ),
    );
  }
}
