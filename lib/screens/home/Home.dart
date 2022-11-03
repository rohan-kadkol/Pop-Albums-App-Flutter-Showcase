import 'package:blur/blur.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pop_music_concerts/data/music.dart';
import 'package:pop_music_concerts/widgets/album_section.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  double value = 0.6;
  int selectedAlbumIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Taylor Swift'),
      //   backgroundColor: Colors.black,
      // ),
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Positioned.fill(
            child: PageView(
              physics: const BouncingScrollPhysics(),
              onPageChanged: (i) => setState(() => selectedAlbumIndex = i),
              // children: albums.map(album => AlbumSection(album: album)).toList(),
              children: [
                AlbumSection(album: albums[0]),
                AlbumSection(album: albums[1]),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: TweenAnimationBuilder(
              // curve: Curves.bounceIn,
              duration: const Duration(milliseconds: 300),
              tween: ColorTween(
                begin: albums[0].color,
                end: albums[selectedAlbumIndex].color,
              ),
              builder: (context, color, child) {
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Stack(
                    // mainAxisSize: MainAxisSize.min,
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        decoration: BoxDecoration(
                          // color: Colors.black.withOpacity(0.6),
                          // boxShadow: [
                          //   BoxShadow(
                          //     color: Colors.grey,
                          //     blurRadius: 8,
                          //   ),
                          // ],
                          // border: Border(
                          //   top: BorderSide(
                          //     width: 1,
                          //     color: Colors.grey.shade900,
                          //   ),
                          // ),
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            width: 1,
                            color: Colors.grey.shade900,
                          ),
                        ),
                        child: playBar(),
                      ).frosted(
                        // frostColor: Colors.blueGrey.shade900,
                        frostColor: Color.alphaBlend(
                          Colors.blueGrey.shade900.withOpacity(0.85),
                          color ?? Colors.blueGrey.shade900,
                        ),
                        frostOpacity: 0.2,
                        blur: 3,
                      ),
                      Positioned(
                        top: -10,
                        left: -16,
                        right: -16,
                        child: Container(
                          // color: Colors.red,
                          height: 20,
                          child: Slider(
                            activeColor: color,
                            value: value,
                            onChanged: (v) => setState(() => value = v),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }

  Widget playBar() {
    return Row(
      // mainAxisAlignment: MainAxisAlignment.center,
      children: [
        button(
          icon: Icons.skip_previous,
          backgroundColor: Colors.transparent,
          iconColor: Colors.white,
        ),
        const SizedBox(width: 4),
        button(
          icon: Icons.play_arrow,
          backgroundColor: Colors.white,
          iconColor: Colors.black,
        ),
        const SizedBox(width: 4),
        button(
          icon: Icons.skip_next,
          backgroundColor: Colors.transparent,
          iconColor: Colors.white,
        ),
        const SizedBox(width: 16),
        Container(
          height: 42,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(6)),
          clipBehavior: Clip.antiAlias,
          child: Image.asset(
            'assets/taylor_swift_midnights.webp',
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Lavender Haze'),
              Text(
                'Midnights ∙ Taylor Swift',
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }

  Widget button({
    required IconData icon,
    required Color backgroundColor,
    required Color iconColor,
  }) {
    return Container(
      width: 36,
      height: 36,
      decoration: BoxDecoration(shape: BoxShape.circle),
      clipBehavior: Clip.antiAlias,
      child: Material(
        color: backgroundColor,
        child: InkWell(
          onTap: () => null,
          child: Icon(
            icon,
            color: iconColor,
          ),
        ),
      ),
    );
  }
}
