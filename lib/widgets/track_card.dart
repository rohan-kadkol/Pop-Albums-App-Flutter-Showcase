import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:intl/intl.dart';
import 'package:pop_music_concerts/data/album.dart';
import 'package:pop_music_concerts/data/track.dart';
import 'package:pop_music_concerts/providers/music_provider.dart';
import 'package:provider/provider.dart';

class TrackCard extends StatelessWidget {
  const TrackCard(
      {super.key,
      required this.album,
      required this.track,
      required this.onTap});

  final Album album;
  final Track track;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    MusicProvider musicProvider = context.watch<MusicProvider>();
    Track? currentlyPlayingTrack = musicProvider.currentlyPlayingTrack;
    bool isTrackPlaying = currentlyPlayingTrack == track;
    bool isPlaying = musicProvider.isPlaying;

    // TODO (7): Row with track.number, spacing = 20, name (expanded), SpinKitWave when playing , duration
    // TODO (8): SpinKit horizontal padding = 16, size = 12
    // TODO (9): Duration = "ss" format and not "s" format

    // TODO (10): (Material, InkWell).borderRadius of 6
    // TODO (11): Material.color = isTrackPlaying ? album.color.withOpacity(0.5) : Colors.black
    // TODO (12): Padding.all(16) around Row

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      child: Material(
        borderRadius: BorderRadius.circular(6),
        color: isTrackPlaying ? album.color.withOpacity(0.5) : Colors.black,
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(6),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                Text('${track.number}'),
                const SizedBox(width: 20),
                Expanded(child: Text(track.name)),
                isTrackPlaying && isPlaying
                    ? const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        child: SpinKitWave(
                          color: Colors.white,
                          size: 12.0,
                        ),
                      )
                    : const SizedBox(),
                Text(
                    '${track.duration.minute}: ${DateFormat("ss").format(track.duration)}'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
