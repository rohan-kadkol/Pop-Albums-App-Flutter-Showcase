import 'package:flutter/rendering.dart';
import 'package:pop_music_concerts/data/album.dart';
import 'package:pop_music_concerts/data/track.dart';

final List<Album> albums = [
  Album(
    title: 'Midnights',
    cover: 'assets/taylor_swift_midnights.webp',
    artistName: 'Taylor Swift',
    color: Color.fromARGB(255, 72, 72, 184),
    tracks: [
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
    ],
  ),
  Album(
    title: 'Harry \'s House',
    cover: 'assets/harry_styles_harrys_house.webp',
    artistName: 'Harry Styles',
    color: Color.fromARGB(255, 180, 155, 86),
    tracks: [
      Track(
        number: 1,
        name: 'Music for a Sushi Restaurant',
        duration: DateTime(0, 0, 0, 0, 3, 14),
      ),
      Track(
        number: 2,
        name: 'Late Night Talking',
        duration: DateTime(0, 0, 0, 0, 2, 58),
      ),
      Track(
        number: 3,
        name: 'Grapejuice',
        duration: DateTime(0, 0, 0, 0, 3, 12),
      ),
      Track(
        number: 4,
        name: 'As It Was',
        duration: DateTime(0, 0, 0, 0, 2, 47),
      ),
      Track(
        number: 5,
        name: 'Daylight',
        duration: DateTime(0, 0, 0, 0, 2, 45),
      ),
      Track(
        number: 6,
        name: 'Little Freak',
        duration: DateTime(0, 0, 0, 0, 3, 22),
      ),
      Track(
        number: 7,
        name: 'Matilda',
        duration: DateTime(0, 0, 0, 0, 4, 6),
      ),
      Track(
        number: 8,
        name: 'Cinema',
        duration: DateTime(0, 0, 0, 0, 4, 4),
      ),
      Track(
        number: 9,
        name: 'Daydreaming',
        duration: DateTime(0, 0, 0, 0, 3, 7),
      ),
      Track(
        number: 10,
        name: 'Keep Driving',
        duration: DateTime(0, 0, 0, 0, 2, 20),
      ),
      Track(
        number: 11,
        name: 'Satellite',
        duration: DateTime(0, 0, 0, 0, 3, 39),
      ),
      Track(
        number: 12,
        name: 'Boyfriends',
        duration: DateTime(0, 0, 0, 0, 3, 15),
      ),
      Track(
        number: 13,
        name: 'Love of My Life',
        duration: DateTime(0, 0, 0, 0, 3, 12),
      ),
    ],
  )
];
