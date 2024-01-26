class Game {
  int id;
  String type;
  String user;
  List<int> questions;
  int points;
  bool archive;

  Game(
      {required this.id,
        required this.type,
        this.user = '',
        this.questions = const [0],
        this.points = 0,
        this.archive = false,
      });

  factory Game.fromJson(Map<String, dynamic> json) {
    return Game(
      id: json['id'] as int,
      type: json['type'] as String,
      user: json['user'] as String,
      questions: json['questions'] as List<int>,
      points: json['points'] as int,
      archive: json['archive'] as bool,
    );
  }
}
