import 'package:blur/blur.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pop_music_concerts/data/album.dart';
import 'package:pop_music_concerts/data/music.dart';
import 'package:pop_music_concerts/providers/music_provider.dart';
import 'package:pop_music_concerts/widgets/album_section.dart';
import 'package:pop_music_concerts/widgets/bottom_bar.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    MusicProvider provider = context.watch<MusicProvider>();
    Album selectedAlbum = provider.selectedAlbum;

    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Positioned.fill(
            child: albumSectionPages(context),
          ),
          Align(
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
