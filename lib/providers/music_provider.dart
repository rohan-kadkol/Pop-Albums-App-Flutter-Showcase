import 'package:flutter/material.dart';
import 'package:pop_music_concerts/data/album.dart';
import 'package:pop_music_concerts/data/music.dart';
import 'package:pop_music_concerts/data/track.dart';

class MusicProvider extends ChangeNotifier {
  Album _selectedAlbum = albums[0];
  Album? _currentlyPlayingAlbum;
  Track? _currentlyPlayingTrack;

  double _thumbPosition = 0;
  bool _isPlaying = false;

  bool get isPlaying => _isPlaying;

  double get thumbPosition => _thumbPosition;

  set thumbPosition(double thumbPosition) {
    _thumbPosition = thumbPosition;
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
    _currentlyPlayingAlbum = album;
    _currentlyPlayingTrack = track;
    thumbPosition = 0;
    _isPlaying = true;
    notifyListeners();
  }

  void stopListening() {
    _currentlyPlayingAlbum = null;
    _currentlyPlayingTrack = null;
    thumbPosition = 0;
    _isPlaying = false;
    notifyListeners();
  }

  void togglePlay() {
    _isPlaying = !_isPlaying;
    notifyListeners();
  }
}
