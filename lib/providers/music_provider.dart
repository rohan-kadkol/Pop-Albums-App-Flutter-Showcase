import 'package:flutter/material.dart';
import 'package:pop_music_concerts/data/track.dart';

class MusicProvider extends ChangeNotifier {
  Track? _currentlyPlaying;

  Track? get currentlyPlaying => _currentlyPlaying;

  set currentlyPlaying(Track? currentlyPlaying) {
    _currentlyPlaying = currentlyPlaying;
    notifyListeners();
  }
}
