import 'package:flutter/material.dart';
import 'package:pop_music_concerts/data/track.dart';

class TrackCard extends StatelessWidget {
  const TrackCard({super.key, required this.track, required this.onClick});

  final Track track;
  final void Function() onClick;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      child: Material(
        borderRadius: BorderRadius.circular(6),
        color: Colors.black,
        child: InkWell(
          onTap: () => null,
          borderRadius: BorderRadius.circular(6),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                Text('${track.number}'),
                const SizedBox(width: 20),
                Expanded(child: Text(track.name)),
                Text('${track.duration.minute}:${track.duration.second}'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
