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
    // TODO (1): Wrap header with a Column
    // TODO (2): Add trackList to the Column
    // TODO (3): Space between header - trackList = 30
    // TODO (4): Space after trackList = 140
    return SizedBox(
      child: header(context),
    );
  }

  Widget trackList(BuildContext context) {
    // TODO (5): children = List of TrackCards
    // TODO (6): onTap = MusicProvider.startListeningToTrack

    return Column(
      children: album.tracks
          .map(
            (track) => TrackCard(
              album: album,
              track: track,
              onTap: () {
                context
                    .read<MusicProvider>()
                    .startListeningToTrack(album, track);
              },
            ),
          )
          .toList(),
    );
  }

  Widget header(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SizedBox(
        child: Stack(
          children: [
            Positioned.fill(
              child: Image.asset(
                album.cover,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.transparent, Colors.black],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    album.title,
                    style: Theme.of(context)
                        .textTheme
                        .headline4
                        ?.copyWith(color: Colors.white),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    album.artistName,
                    style: Theme.of(context).textTheme.headline6?.copyWith(
                          color: Colors.grey,
                        ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
