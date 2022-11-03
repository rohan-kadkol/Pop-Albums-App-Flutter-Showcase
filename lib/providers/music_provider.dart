import 'dart:async';

import 'package:flutter/material.dart';
import 'package:pop_music_concerts/data/album.dart';
import 'package:pop_music_concerts/data/music.dart';
import 'package:pop_music_concerts/data/track.dart';

class MusicProvider extends ChangeNotifier {
  Album _selectedAlbum = albums[0];
  Album? _currentlyPlayingAlbum;
  Track? _currentlyPlayingTrack;

  bool _isPlaying = false;

  Timer? _timer;
  int _trackSecondsListened = 0;

  bool get isPlaying => _isPlaying;

  double get thumbPosition =>
      _trackSecondsListened /
      (_currentlyPlayingTrack?.getDurationSeconds() ?? double.infinity);

  void updateThumbPosition(double thumbPosition) {
    if (_currentlyPlayingTrack == null) {
      return;
    }

    _trackSecondsListened = (thumbPosition.clamp(0, 1) *
            _currentlyPlayingTrack!.getDurationSeconds())
        .round();

    notifyListeners();
  }

  Album get selectedAlbum => _selectedAlbum;

  set selectedAlbum(Album selectedAlbum) {
    _selectedAlbum = selectedAlbum;
    notifyListeners();
  }

  Album? get currentlyPlayingAlbum => _currentlyPlayingAlbum;
  Track? get currentlyPlayingTrack => _currentlyPlayingTrack;

  void _playAdjacent(bool isNext) {
    if (_currentlyPlayingAlbum == null || _currentlyPlayingTrack == null) {
      return;
    }

    int newTrackNumber = _currentlyPlayingTrack!.number + (isNext ? 1 : -1);
    if (newTrackNumber > _currentlyPlayingAlbum!.tracks.length) {
      newTrackNumber = 1;
    }
    if (newTrackNumber < 1) {
      newTrackNumber = _currentlyPlayingAlbum!.tracks.length;
    }

    final Track newTrack = _currentlyPlayingAlbum!.tracks[newTrackNumber - 1];
    startListeningToTrack(_currentlyPlayingAlbum!, newTrack);
  }

  void playNextTrack() {
    _playAdjacent(true);
  }

  void playPrevTrack() {
    _playAdjacent(false);
  }

  void startListeningToTrack(Album album, Track track) {
    if (_currentlyPlayingTrack != null && track == _currentlyPlayingTrack) {
      return;
    }

    _currentlyPlayingAlbum = album;
    _currentlyPlayingTrack = track;
    _trackSecondsListened = 0;
    _startTimer();
    _isPlaying = true;
    notifyListeners();
  }

  void stopListening() {
    _currentlyPlayingAlbum = null;
    _currentlyPlayingTrack = null;
    _trackSecondsListened = 0;
    _isPlaying = false;
    _timer?.cancel();
    _timer = null;
    notifyListeners();
  }

  void updateIsPlaying(bool isPlaying) {
    _isPlaying = isPlaying;
    if (_isPlaying) {
      _startTimer();
    } else {
      _timer?.cancel();
      _timer = null;
    }
    notifyListeners();
  }

  void _startTimer() {
    _stopTimer();
    _timer = Timer.periodic(const Duration(seconds: 1), (Timer t) {
      if (thumbPosition >= 1 || _currentlyPlayingTrack == null) {
        stopListening();
      }
      _trackSecondsListened++;
      notifyListeners();
    });
  }

  void _stopTimer() {
    _timer?.cancel();
    _timer = null;
  }
}
