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
      // TODO (1): Return Container
      // TODO (2): Container width = height = 36
      // TODO (3): Container.child = Material -> InkWell -> Icon
      // TODO (4): Material.color = backgroundColor
      // TODO (5): InkWell.onTap = onTap
      // TODO (6): Icon.color = iconColor
      // TODO (7): Container.decoration.shape = circle
      // TODO (8): Contianer.clipBehavior = antiAlias

      return const SizedBox();
    }

    return [
      button(
        icon: Icons.skip_previous,
        backgroundColor: Colors.transparent,
        iconColor: musicProvider.currentlyPlayingTrack != null
            ? Colors.white
            : Colors.grey,
        onTap: musicProvider.currentlyPlayingTrack != null
            ? () => context.read<MusicProvider>().playPrevTrack()
            : null,
      ),
      button(
        icon: musicProvider.isPlaying ? Icons.pause : Icons.play_arrow,
        backgroundColor: musicProvider.currentlyPlayingTrack != null
            ? Colors.white
            : Colors.grey.shade300,
        iconColor: musicProvider.currentlyPlayingTrack != null
            ? Colors.black
            : Colors.grey,
        onTap: musicProvider.currentlyPlayingTrack != null
            ? () => context
                .read<MusicProvider>()
                .updateIsPlaying(!musicProvider.isPlaying)
            : null,
      ),
      button(
        icon: Icons.skip_next,
        backgroundColor: Colors.transparent,
        iconColor: musicProvider.currentlyPlayingTrack != null
            ? Colors.white
            : Colors.grey,
        onTap: musicProvider.currentlyPlayingTrack != null
            ? () => context.read<MusicProvider>().playNextTrack()
            : null,
      ),
    ];
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
    // TODO (9): Column.children = [TextScroll, TextScroll]
    // TODO (10): TextScroll1.text = musicProvider.currentlyPlayingTrack?.name ?? 'None playing',
    // TODO (11): TextScroll2.text = musicProvider.currentlyPlayingTrack != null ? '${musicProvider.currentlyPlayingAlbum?.title} ∙ ${musicProvider.currentlyPlayingAlbum?.artistName}' : '',
    // TODO (12): TextScroll2.textStyle = fontSize = 15, color = grey
    // TODO (13): Both TextScrolls, mode: TextScrollMode.bouncing,
    // TODO (14): Both TextScrolls, velocity: const Velocity(pixelsPerSecond: Offset(8, 0)),
    // TODO (15): Both TextScrolls, pauseBetween: const Duration(milliseconds: 2000),

    return Column(
      children: [],
    );
  }

  Widget albumArt(MusicProvider musicProvider) {
    // TODO (16): Container
    // TODO (17): Container.width = height = 42
    // TODO (18): Container.borderRadius = 6
    // TODO (19): Container.clipBehavior = antiAlias
    // TODO (20): Container.child = If track is playing, musicProvider.currentlyPlayingAlbum.cover, else Icon(Icons.music_off)

    return Container();
  }
}
