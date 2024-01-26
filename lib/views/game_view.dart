import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:prvacik/providers/game_provider.dart';
import 'package:prvacik/widgets/question_abc.dart';
import 'package:prvacik/widgets/question_connect.dart';
import 'package:prvacik/widgets/question_open.dart';
import 'package:prvacik/widgets/question_sort.dart';

class GameView extends StatelessWidget {
  const GameView({super.key});

  @override
  Widget build(BuildContext context) {
    final gameProvider = Provider.of<GameProvider>(context);
    gameProvider.startGame('training', false);
    int current = gameProvider.current;

    return Scaffold(
      appBar: AppBar(
        flexibleSpace: GestureDetector(
            onTap: (){
              Navigator.pop(context);
            }),
        title: const Text("Otázka"),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: QuestionAbc(current),
      ),
    );

  }
}
