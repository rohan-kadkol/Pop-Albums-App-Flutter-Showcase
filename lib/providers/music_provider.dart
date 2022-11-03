import 'package:flutter/material.dart';
import 'package:pop_music_concerts/data/album.dart';
import 'package:pop_music_concerts/data/music.dart';
import 'package:pop_music_concerts/data/track.dart';

class MusicProvider extends ChangeNotifier {
  Album _selectedAlbum = albums[0];
  Track? _currentlyPlaying;

  Album get selectedAlbum => _selectedAlbum;

  set selectedAlbum(Album selectedAlbum) {
    _selectedAlbum = selectedAlbum;
    notifyListeners();
  }

  Track? get currentlyPlaying => _currentlyPlaying;

  set currentlyPlaying(Track? currentlyPlaying) {
    _currentlyPlaying = currentlyPlaying;
    notifyListeners();
  }
}
