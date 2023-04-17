class Games {
  final int id;
  final String name;
  final String date;

  Games({required this.id, required this.name, required this.date});
}

class GameType {
  final int id;
  final String name;
  final bool isMinMax;
  final int minPlayCount;
  final int maxPlayCount;
  final int multipler;
  final int? r;

  GameType(
      {required this.id,
      required this.name,
      required this.isMinMax,
      required this.multipler,
      this.r,
      required this.minPlayCount,
      required this.maxPlayCount});
}
