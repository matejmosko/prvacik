import 'package:flutter/foundation.dart';


class GameModel extends ChangeNotifier {
  /// Internal, private state of the cart.

  final Map<String,dynamic> _game = {
    'points': 0,
    'name': "default"
  };

  String get points => _game["points"].toString();


  /// Adds [item] to cart. This and [removeAll] are the only ways to modify the
  /// cart from the outside.
  void addPoint(int p) {
    _game["points"] = _game["points"]+p;
    // This call tells the widgets that are listening to this model to rebuild.
    notifyListeners();
  }

  /// Removes all items from the cart.
  void reset() {
    _game["points"] = 0;
    // This call tells the widgets that are listening to this model to rebuild.
    notifyListeners();
  }
}