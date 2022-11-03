import 'package:flutter/material.dart';
import 'package:pop_music_concerts/data/album.dart';
import 'package:pop_music_concerts/data/track.dart';
import 'package:pop_music_concerts/providers/music_provider.dart';
import 'package:provider/provider.dart';
import 'package:blur/blur.dart';
import 'package:text_scroll/text_scroll.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    MusicProvider musicProvider = context.watch<MusicProvider>();
    Album selectedAlbum = musicProvider.selectedAlbum;
    Track? currentlyPlayingTrack = musicProvider.currentlyPlayingTrack;
    double thumbPosition = musicProvider.thumbPosition;

    return bottomBarContent(
      context: context,
      musicProvider: musicProvider,
      color: Colors.black,
    );
  }

  Widget scrubberSlider(
    Color? color,
    Track? currentlyPlayingTrack,
    double thumbPosition,
    BuildContext context,
  ) {
    return const SizedBox();
  }

  List<Widget> buttons(
      {required BuildContext context, required MusicProvider musicProvider}) {
    Widget button({
      required IconData icon,
      required Color backgroundColor,
      required Color iconColor,
      void Function()? onTap,
    }) {
      return const SizedBox();
    }

    return [];
  }

  Widget bottomBarContent(
      {required BuildContext context,
      required MusicProvider musicProvider,
      required Color? color}) {
    return Container(
      height: 120,
      padding: const EdgeInsets.symmetric(vertical: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          width: 1,
          color: Colors.grey.shade900,
        ),
      ),
      child: Row(
        children: [
          ...buttons(context: context, musicProvider: musicProvider),
          const SizedBox(width: 4),
          albumArt(musicProvider),
          const SizedBox(width: 12),
          Expanded(
            child: trackAlbumArtistName(musicProvider),
          )
        ],
      ),
    ).frosted(
      frostColor: Color.alphaBlend(
        Colors.blueGrey.shade900.withOpacity(0.85),
        color ?? Colors.blueGrey.shade900,
      ),
      frostOpacity: 0.2,
      blur: 3,
      borderRadius: BorderRadius.circular(10),
    );
  }

  Widget trackAlbumArtistName(MusicProvider musicProvider) {
    return Column(
      children: [],
    );
  }

  Widget albumArt(MusicProvider musicProvider) {
    return Container();
  }
}
