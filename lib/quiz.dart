import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final List<AssetImage> images;
  final int imageIndex;
  final Function answerQuestion;

  Quiz(
      {@required this.questions,
      @required this.answerQuestion,
      @required this.questionIndex,
      @required this.images,
      @required this.imageIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image(
          image: images[imageIndex],
          fit: BoxFit.contain,
          width: 400.0,
          height: 400.0,
        ),
        Question(questions[questionIndex]['questionText']),
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(
              () => answerQuestion(answer['score']), answer['text'] as String);
        }).toList()
      ],
    );
  }
}
