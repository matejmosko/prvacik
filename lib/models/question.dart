class Question {
  final int id;
  final String type;
  final String text;
  final String image;
  final List<String> questions;
  final List<String> answers;
  final List<String> qimages;
  final List<String> aimages;
  final List<String> topics;
  final int difficulty;

  Question(
      {required this.id,
      required this.type,
      this.text = '',
      this.image = '',
      this.questions = const [""],
      this.answers = const [],
      this.qimages = const [],
      this.aimages = const [],
      this.topics = const [],
      this.difficulty = 0});

  factory Question.fromJson(Map<String, dynamic> json) {
    return Question(
      id: json['id'] as int,
      type: json['type'] as String,
      text: json['text'] as String,
      image: json['image'] as String,
      questions: json['questions'] as List<String>,
      answers: json['answers'] as List<String>,
      qimages: json['qimages'] as List<String>,
      aimages: json['aimages'] as List<String>,
      topics: json['topics'] as List<String>,
      difficulty: json['difficulty'] as int,
    );
  }
}
