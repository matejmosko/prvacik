import 'package:flutter/foundation.dart';
import 'package:prvacik/models/question.dart';


class QuestionsProvider extends ChangeNotifier {

  late List<Question> _qdb;

  QuestionsProvider(){
    fetchQuestions();
    getQuestion(0);
  }

  List<Question> get qdb => _qdb;

  /* TEMP  */
    final Question _q = Question(
      id: -1,
      type: "abc",
      text: 'Čo je na obrázku?',
      image:
      'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
      questions: [
      'Plamienka driemavá',
      'Výr skalný',
      'Kuvik Lesný',
      'Sova snežná',
      'Triceratops'
      ], // Pri priradzovačkách priradzujeme podľa indexov. pri ABC otázkach tu sú možnosti. pri zoraďovačkách sa nepoužíva. pri otvorených otázkach nepoužívame.
      answers: [
      "0",
      "1"
      ], // Pri priradzovačkách priradzujeme podľa indexov. pri ABC otázkach tu sú možné správne odpovede. pri zoraďovačkách tu zadať v správnom poradí. pri otvorených otázkach su tú možné správne odpovede.
      qimages: [
      'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
      'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'
      ],
      aimages: [],
      topics: [],
      difficulty: 0,
    );

    Question getQuestion(int id) { // Tu bude type Question
      _qdb[0] = _q;
      _qdb[1] = _q;
      _qdb[2] = _q;
      _qdb[3] = _q;
      notifyListeners();
      return _qdb[id];
  }

  /// Gets DB from firebase
  void fetchQuestions() {
        notifyListeners();
  }
}