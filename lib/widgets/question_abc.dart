import 'package:flutter/material.dart';
import 'package:prvacik/providers/question_model.dart';
import 'dart:math';

String generateRandomString(int len) {
  var r = Random();
  return String.fromCharCodes(
      List.generate(len, (index) => r.nextInt(33) + 89));
}

class QuestionAbc extends StatelessWidget {
  const QuestionAbc({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Flexible(
          child: Center(
            child: Image.network(
              'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
            ),
          ),
        ),
        Flexible(
          child: Center(
            child: const Text("Čo je na obrázku?"),
          ),
        ),
        Flexible(
          child: Wrap(
            children: List.generate(10, (index) {
              return TextButton(
                onPressed: () {},
                child: Text(
                  generateRandomString(12),
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
