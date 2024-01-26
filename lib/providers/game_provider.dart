import 'package:flutter/foundation.dart';
import 'package:prvacik/models/game.dart';
import 'package:prvacik/providers/questions_provider.dart'; // aby som zistil, ktoré otázky sú v db.


class GameProvider extends ChangeNotifier {
  /// Internal, private state of the cart.
  late Game _game;
  late int _current = 0;

  Game get game => _game;
  int get current => _current;

  GameProvider(){
   createGame('training');
   addPoint(0);
   startGame('training', false);
}

  String get points => _game.points.toString();

  void createGame(String type){
    _game = Game(
      id: 0,
      type: type, // training, quick, tournament
      questions: [0,1,2,3], // ids
      user: "default", // userid
      points: 0,
      archive: false, //true / false
    );
    notifyListeners();
  }

  void startGame(String type, bool restart){
    if (_game.id == -1){
      createGame('training');
    }
    notifyListeners();
  }

  void addPoint(int p) {
    _game.points = _game.points+p;
    // This call tells the widgets that are listening to this model to rebuild.
    notifyListeners();
  }

  void nextQuestion(){
    _current++;
  }

}