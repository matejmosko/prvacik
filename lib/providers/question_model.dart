import 'package:flutter/foundation.dart';


class GameModel extends ChangeNotifier {
  /// Internal, private state of the cart.

  final Map<String,dynamic> _question = {
    'id': 0,
    'type': 'abc',
    'text': 'Čo je na obrázku?',
    'image': 'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
    'questions': ['Plamienka driemavá', 'Výr skalný', 'Kuvik Lesný', 'Sova snežná', 'Triceratops'], // Pri priradzovačkách priradzujeme podľa indexov. pri ABC otázkach tu sú možnosti. pri zoraďovačkách sa nepoužíva. pri otvorených otázkach nepoužívame.
    'answers': [] // Pri priradzovačkách priradzujeme podľa indexov. pri ABC otázkach tu sú možné správne odpovede. pri zoraďovačkách tu zadať v správnom poradí. pri otvorených otázkach su tú možné správne odpovede.
  };

  get id => _question["id"];
  String get type => _question["type"];
  String get text => _question["type"];
  String get image => _question["type"];
  List get questions => _question["type"];
  List get answers => _question["answers"];


  /// Adds [item] to cart. This and [removeAll] are the only ways to modify the
  /// cart from the outside.
  void addPoint(int p) {
    _question["points"] = _question["points"]+p;
    // This call tells the widgets that are listening to this model to rebuild.
    notifyListeners();
  }

  /// Removes all items from the cart.
  void reset() {
    _question["points"] = 0;
    // This call tells the widgets that are listening to this model to rebuild.
    notifyListeners();
  }
}