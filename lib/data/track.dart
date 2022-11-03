class Track {
  final int number;
  final String name;
  final DateTime duration;

  const Track(
      {required this.number, required this.name, required this.duration});

  int getDurationSeconds() {
    return duration.minute * 60 + duration.second;
  }
}
