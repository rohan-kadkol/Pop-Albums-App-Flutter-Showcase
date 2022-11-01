import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Taylor Swift'),
      //   backgroundColor: Colors.black,
      // ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 300,
              child: Stack(
                children: [
                  Positioned.fill(
                    child: Image.asset(
                      'assets/taylor_swift_midnights.webp',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned.fill(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.red,
                        gradient: LinearGradient(
                          colors: [
                            Colors.transparent,
                            Colors.black.withOpacity(1),
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Midnights',
                          style: Theme.of(context)
                              .textTheme
                              .headline4
                              ?.copyWith(color: Colors.white),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'Taylor Swift',
                          style:
                              Theme.of(context).textTheme.headline6?.copyWith(
                                    // fontWeight: FontWeight.bold,
                                    color: Colors.grey,
                                  ),
                          // style: Theme.of(context).textTheme.,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            // Container(
            //   height: 300,
            //   decoration: BoxDecoration(
            //     image: DecorationImage(
            //       image: AssetImage(
            //         'assets/taylor_swift_midnights.webp',
            //       ),
            //       fit: BoxFit.cover,
            //       // colorFilter: ColorFilter.mode(
            //       //     Colors.black.withOpacity(1), BlendMode.darken),
            //     ),
            //   ),
            // )
            // Container(
            //   height: 1000,
            //   decoration: BoxDecoration(color: Colors.black),
            // ),
            const SizedBox(height: 30),
            Container(
              // color: Colors.red,
              child: Column(
                children: artists[0]
                    .tracks
                    .map((track) => TrackCard(track: track))
                    .toList(),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class TrackCard extends StatelessWidget {
  const TrackCard({super.key, required this.track});

  final Track track;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      padding: const EdgeInsets.all(8),
      child: Row(
        children: [
          Text('${track.number}'),
          const SizedBox(width: 20),
          Expanded(child: Text(track.name)),
          Text('${track.duration.minute}:${track.duration.second}'),
        ],
      ),
    );
  }
}

class Album {
  final String title;
  final String artistName;
  final List<Track> tracks;

  const Album(
      {required this.title, required this.artistName, required this.tracks});
}

class Track {
  final int number;
  final String name;
  final DateTime duration;

  const Track(
      {required this.number, required this.name, required this.duration});
}

final List<Album> artists = [
  Album(title: 'Midnights', artistName: 'Taylor Swift', tracks: [
    Track(
      number: 1,
      name: 'Lavender Haze',
      duration: DateTime(0, 0, 0, 0, 3, 22),
    ),
    Track(
      number: 2,
      name: 'Maroon',
      duration: DateTime(0, 0, 0, 0, 3, 38),
    ),
    Track(
      number: 3,
      name: 'Anti-Hero',
      duration: DateTime(0, 0, 0, 0, 3, 21),
    ),
    Track(
      number: 4,
      name: 'Snow on the Beach',
      duration: DateTime(0, 0, 0, 0, 4, 16),
    ),
    Track(
      number: 5,
      name: 'You\'re on Your Own, Kid',
      duration: DateTime(0, 0, 0, 0, 3, 14),
    ),
    Track(
      number: 6,
      name: 'Midnight Rain',
      duration: DateTime(0, 0, 0, 0, 2, 55),
    ),
    Track(
      number: 7,
      name: 'Question...?',
      duration: DateTime(0, 0, 0, 0, 3, 31),
    ),
    Track(
      number: 8,
      name: 'Vigilante ****',
      duration: DateTime(0, 0, 0, 0, 2, 45),
    ),
    Track(
      number: 9,
      name: 'Bejeweled',
      duration: DateTime(0, 0, 0, 0, 3, 14),
    ),
    Track(
      number: 10,
      name: 'Labyrinth',
      duration: DateTime(0, 0, 0, 0, 4, 8),
    ),
    Track(
      number: 11,
      name: 'Karma',
      duration: DateTime(0, 0, 0, 0, 3, 25),
    ),
    Track(
      number: 12,
      name: 'Sweet Nothing',
      duration: DateTime(0, 0, 0, 0, 3, 8),
    ),
    Track(
      number: 13,
      name: 'Mastermind',
      duration: DateTime(0, 0, 0, 0, 3, 11),
    ),
    Track(
      number: 14,
      name: 'The Great War',
      duration: DateTime(0, 0, 0, 0, 4, 0),
    ),
    Track(
      number: 15,
      name: 'Bigger Than the Whole Sky',
      duration: DateTime(0, 0, 0, 0, 3, 39),
    ),
    Track(
      number: 16,
      name: 'Paris',
      duration: DateTime(0, 0, 0, 0, 3, 16),
    ),
    Track(
      number: 17,
      name: 'High Infidelity',
      duration: DateTime(0, 0, 0, 0, 3, 51),
    ),
    Track(
      number: 18,
      name: 'Glitch',
      duration: DateTime(0, 0, 0, 0, 2, 29),
    ),
    Track(
      number: 19,
      name: 'Would\'ve, Could\'ve, Should\'ve',
      duration: DateTime(0, 0, 0, 0, 4, 20),
    ),
    Track(
      number: 20,
      name: 'Dear Reader',
      duration: DateTime(0, 0, 0, 0, 3, 45),
    ),
  ])
];
