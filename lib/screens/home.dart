import 'package:flutter/material.dart';
import 'package:pop_music_concerts/data/music.dart';
import 'package:pop_music_concerts/providers/music_provider.dart';
import 'package:pop_music_concerts/widgets/album_section.dart';
import 'package:pop_music_concerts/widgets/bottom_bar.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // TODO (1): Add black background color
      body: AlbumSection(
        album: albums[0],
      ),
    );
  }

  Widget albumSectionPages(BuildContext context) {
    return const SizedBox();
  }
}
