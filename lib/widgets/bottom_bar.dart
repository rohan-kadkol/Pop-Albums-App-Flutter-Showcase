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

    return const SizedBox();
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
    return Container();
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
