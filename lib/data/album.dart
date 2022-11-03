import 'package:flutter/material.dart';
import 'package:pop_music_concerts/data/track.dart';

class Album {
  final String title;
  final String cover;
  final String artistName;
  final List<Track> tracks;
  final Color color;

  const Album({
    required this.title,
    required this.cover,
    required this.artistName,
    required this.tracks,
    required this.color,
  });
}
