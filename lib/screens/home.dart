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

      // TODO (1): Put albumSectionPages() in a Stack
      // TODO (2): Wrap albumSectionPages() with Positioned.fill
      // TODO (3): Add BottomBar() to Stack
      // TODO (4): Wrap BottomBar() with Align.alignment = bottomCenter

      body: Stack(
        children: [
          Positioned.fill(
            child: albumSectionPages(context),
          ),
          const Align(
            alignment: Alignment.bottomCenter,
            child: BottomBar(),
          )
        ],
      ),
    );
  }

  Widget albumSectionPages(BuildContext context) {
    return PageView(
      physics: const BouncingScrollPhysics(),
      onPageChanged: (i) =>
          context.read<MusicProvider>().selectedAlbum = albums[i],
      children: albums.map((album) => AlbumSection(album: album)).toList(),
    );
  }
}
