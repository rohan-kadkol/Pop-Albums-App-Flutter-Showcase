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
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          header(context),
          const SizedBox(height: 30),
          trackList(context),
          const SizedBox(height: 140),
        ],
      ),
    );
  }

  Widget trackList(BuildContext context) {
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
      child: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              album.cover,
              fit: BoxFit.cover,
            ),
          ),
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.red,
                gradient: LinearGradient(
                  colors: [
                    Colors.transparent,
                    Colors.black.withOpacity(1),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
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
    );
  }
}
