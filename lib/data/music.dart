import 'package:flutter/rendering.dart';
import 'package:pop_music_concerts/data/album.dart';
import 'package:pop_music_concerts/data/track.dart';

final List<Album> albums = [
  Album(
    title: 'Midnights',
    cover: 'assets/taylor_swift_midnights.webp',
    artistName: 'Taylor Swift',
    color: const Color(0xFFC9E8FD),
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
    color: const Color(0xFFAE825F),
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
  ),
  Album(
    title: 'Future Nostalgia',
    cover: 'assets/dua_lipa_future_nostalgia.webp',
    artistName: 'Dua Lipa',
    color: const Color(0xFFF6AFF3),
    tracks: [
      Track(
        number: 1,
        name: 'Future Nostalgia',
        duration: DateTime(0, 0, 0, 0, 3, 05),
      ),
      Track(
        number: 2,
        name: 'Don\'t Start Now',
        duration: DateTime(0, 0, 0, 0, 3, 03),
      ),
      Track(
        number: 3,
        name: 'Cool',
        duration: DateTime(0, 0, 0, 0, 3, 30),
      ),
      Track(
        number: 4,
        name: 'Physical',
        duration: DateTime(0, 0, 0, 0, 3, 14),
      ),
      Track(
        number: 5,
        name: 'Levitating',
        duration: DateTime(0, 0, 0, 0, 3, 24),
      ),
      Track(
        number: 6,
        name: 'Pretty Please',
        duration: DateTime(0, 0, 0, 0, 3, 15),
      ),
      Track(
        number: 7,
        name: 'Hallucinate',
        duration: DateTime(0, 0, 0, 0, 3, 29),
      ),
      Track(
        number: 8,
        name: 'Love Again',
        duration: DateTime(0, 0, 0, 0, 4, 18),
      ),
      Track(
        number: 9,
        name: 'Break My Heart',
        duration: DateTime(0, 0, 0, 0, 3, 42),
      ),
      Track(
        number: 10,
        name: 'Good in Bed',
        duration: DateTime(0, 0, 0, 0, 3, 39),
      ),
      Track(
        number: 11,
        name: 'Boys Will Be Boys',
        duration: DateTime(0, 0, 0, 0, 2, 46),
      ),
    ],
  ),
  Album(
    title: 'Starboy',
    cover: 'assets/the_weeknd_starboy.png',
    artistName: 'The Weeknd',
    color: const Color(0xFFE10430),
    tracks: [
      Track(
        number: 1,
        name: 'Starboy',
        duration: DateTime(0, 0, 0, 0, 3, 50),
      ),
      Track(
        number: 2,
        name: 'Party Monster',
        duration: DateTime(0, 0, 0, 0, 4, 09),
      ),
      Track(
        number: 3,
        name: 'False Alarm',
        duration: DateTime(0, 0, 0, 0, 3, 40),
      ),
      Track(
        number: 4,
        name: 'Reminder',
        duration: DateTime(0, 0, 0, 0, 3, 38),
      ),
      Track(
        number: 5,
        name: 'Rockin\'',
        duration: DateTime(0, 0, 0, 0, 3, 52),
      ),
      Track(
        number: 6,
        name: 'Secrets',
        duration: DateTime(0, 0, 0, 0, 4, 25),
      ),
      Track(
        number: 7,
        name: 'True Colors',
        duration: DateTime(0, 0, 0, 0, 3, 26),
      ),
      Track(
        number: 8,
        name: 'Stargirl Interlude',
        duration: DateTime(0, 0, 0, 0, 1, 51),
      ),
      Track(
        number: 9,
        name: 'Sidewalks',
        duration: DateTime(0, 0, 0, 0, 3, 51),
      ),
      Track(
        number: 10,
        name: 'Six Feet Under',
        duration: DateTime(0, 0, 0, 0, 3, 57),
      ),
      Track(
        number: 11,
        name: 'Love to Lay',
        duration: DateTime(0, 0, 0, 0, 3, 43),
      ),
      Track(
        number: 12,
        name: 'A Lonely Night',
        duration: DateTime(0, 0, 0, 0, 3, 40),
      ),
      Track(
        number: 13,
        name: 'Attention',
        duration: DateTime(0, 0, 0, 0, 3, 17),
      ),
      Track(
        number: 14,
        name: 'Ordinary Life',
        duration: DateTime(0, 0, 0, 0, 3, 41),
      ),
      Track(
        number: 15,
        name: 'Nothing Without You',
        duration: DateTime(0, 0, 0, 0, 3, 18),
      ),
      Track(
        number: 16,
        name: 'All I Know',
        duration: DateTime(0, 0, 0, 0, 5, 21),
      ),
      Track(
        number: 17,
        name: 'Die For You',
        duration: DateTime(0, 0, 0, 0, 4, 20),
      ),
      Track(
        number: 18,
        name: 'I Feel It Coming',
        duration: DateTime(0, 0, 0, 0, 4, 29),
      ),
    ],
  ),
];
