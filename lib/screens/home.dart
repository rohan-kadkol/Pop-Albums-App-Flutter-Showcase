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
      backgroundColor: Colors.black,
      // TODO (1): Return albumSectionPages()
      body: albumSectionPages(context),
    );
  }

  Widget albumSectionPages(BuildContext context) {
    // TODO (2): PageView with list of AlbumSection
    // TODO (3): PageView.physics = BouncingScrollPhysics()
    // TODO (4): onPageChanged = MusicProvider.selectedAlbum = albums[i]

    return PageView(
      physics: const BouncingScrollPhysics(),
      onPageChanged: (i) =>
          context.read<MusicProvider>().selectedAlbum = albums[i],
      children: albums.map((album) => AlbumSection(album: album)).toList(),
    );
  }
}
