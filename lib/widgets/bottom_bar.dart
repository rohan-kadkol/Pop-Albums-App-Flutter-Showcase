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

    return TweenAnimationBuilder(
      duration: const Duration(milliseconds: 300),
      tween: ColorTween(
        begin: Colors.blueGrey.shade900,
        end: selectedAlbum.color,
      ),
      builder: (context, color, child) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              bottomBarContent(
                context: context,
                musicProvider: musicProvider,
                color: color,
              ),
              Positioned(
                top: -10,
                left: -16,
                right: -16,
                child: scrubberSlider(
                    color, currentlyPlayingTrack, thumbPosition, context),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget scrubberSlider(
    Color? color,
    Track? currentlyPlayingTrack,
    double thumbPosition,
    BuildContext context,
  ) {
    return SizedBox(
      height: 20,
      child: Slider(
        activeColor: color,
        value: currentlyPlayingTrack != null ? thumbPosition : 0,
        onChanged: (v) => context.read<MusicProvider>().updateThumbPosition(v),
        onChangeStart: (value) {
          context.read<MusicProvider>().updateIsPlaying(false);
        },
        onChangeEnd: (value) {
          context.read<MusicProvider>().updateIsPlaying(true);
        },
      ),
    );
  }

  List<Widget> buttons(
      {required BuildContext context, required MusicProvider musicProvider}) {
    Widget button({
      required IconData icon,
      required Color backgroundColor,
      required Color iconColor,
      void Function()? onTap,
    }) {
      return Container(
        width: 36,
        height: 36,
        decoration: const BoxDecoration(shape: BoxShape.circle),
        clipBehavior: Clip.antiAlias,
        child: Material(
          color: backgroundColor,
          child: InkWell(
            onTap: onTap,
            child: Icon(
              icon,
              color: iconColor,
            ),
          ),
        ),
      );
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

    // return;
  }

  Widget trackAlbumArtistName(MusicProvider musicProvider) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        TextScroll(
          musicProvider.currentlyPlayingTrack?.name ?? 'None playing',
          mode: TextScrollMode.bouncing,
          velocity: const Velocity(pixelsPerSecond: Offset(8, 0)),
          pauseBetween: Duration(milliseconds: 2000),
        ),
        TextScroll(
          musicProvider.currentlyPlayingTrack != null
              ? '${musicProvider.currentlyPlayingAlbum?.title} ∙ ${musicProvider.currentlyPlayingAlbum?.artistName}'
              : '',
          style: TextStyle(
            color: Colors.grey,
            fontSize: 14,
          ),
          mode: TextScrollMode.bouncing,
          velocity: const Velocity(pixelsPerSecond: Offset(8, 0)),
          pauseBetween: Duration(milliseconds: 2000),
        ),
      ],
    );
  }

  Widget albumArt(MusicProvider musicProvider) {
    return Container(
      width: 42,
      height: 42,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(6)),
      clipBehavior: Clip.antiAlias,
      child: musicProvider.currentlyPlayingTrack != null
          ? Image.asset(
              musicProvider.currentlyPlayingAlbum?.cover ?? '',
              fit: BoxFit.cover,
            )
          : Icon(Icons.music_off),
    );
  }
}
