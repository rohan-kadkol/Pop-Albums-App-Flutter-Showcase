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
          SizedBox(
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
                              // fontWeight: FontWeight.bold,
                              color: Colors.grey,
                            ),
                        // style: Theme.of(context).textTheme.,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          // Container(
          //   height: 300,
          //   decoration: BoxDecoration(
          //     image: DecorationImage(
          //       image: AssetImage(
          //         'assets/taylor_swift_midnights.webp',
          //       ),
          //       fit: BoxFit.cover,
          //       // colorFilter: ColorFilter.mode(
          //       //     Colors.black.withOpacity(1), BlendMode.darken),
          //     ),
          //   ),
          // )
          // Container(
          //   height: 1000,
          //   decoration: BoxDecoration(color: Colors.black),
          // ),
          const SizedBox(height: 30),
          Container(
            // color: Colors.red,
            child: Column(
              children: album.tracks
                  .map((track) => TrackCard(
                        album: album,
                        track: track,
                        onTap: () {
                          context
                              .read<MusicProvider>()
                              .startListeningToTrack(album, track);
                          // context.read<MusicProvider>().currentlyPlayingAlbum =
                          //     album;
                          // context.read<MusicProvider>().currentlyPlayingTrack =
                          //     track;
                        },
                      ))
                  .toList(),
            ),
          ),
          SizedBox(
            height: 140,
          ),
        ],
      ),
    );
  }
}
