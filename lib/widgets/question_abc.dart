import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:prvacik/models/question.dart';
import 'package:prvacik/providers/questions_provider.dart';
import 'dart:math';

String generateRandomString(int len) {
  var r = Random();
  return String.fromCharCodes(
      List.generate(len, (index) => r.nextInt(33) + 89));
}

class QuestionAbc extends StatelessWidget {
  const QuestionAbc(this.id, {super.key});
final int id;


  @override
  Widget build(BuildContext context) {
    final questionsProvider = Provider.of<QuestionsProvider>(context);

    Question question = questionsProvider.getQuestion(id);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Flexible(
          child: Center(
            child: Image.network(
question.image,
            ),
          ),
        ),
        Flexible(
          child: Center(
            child: Text(question.text),
          ),
        ),
        Flexible(
          child: Wrap(
            children: List.generate(question.questions.length, (index) {
              return TextButton(
                onPressed: () {},
                child: Text(
                  question.questions[index],
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
              );
            }),
          ),
        ),
      ],
    );
  }
}
