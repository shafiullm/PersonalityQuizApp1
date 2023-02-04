import 'package:flutter/material.dart';
import 'package:test_app_2/result.dart';

import './quiz.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'Responding to Criticism?',
      'answers': [
        {'text': 'Listen and Improve', 'score': 1},
        {'text': 'Well Yes, But No', 'score': 4},
        {'text': 'Ou Yea', 'score': 2},
        {'text': 'Stay Silent', 'score': 3},
      ],
    },
    {
      'questionText': 'Free Time Use?',
      'answers': [
        {'text': 'Play Valorant', 'score': 3},
        {'text': 'Research', 'score': 2},
        {'text': 'Sleep', 'score': 4},
        {'text': 'Learn More', 'score': 1},
      ],
    },
    {
      'questionText': 'Handling Stress?',
      'answers': [
        {'text': 'Bitch about others', 'score': 4},
        {'text': 'Show frustration', 'score': 2},
        {'text': 'Stay calm', 'score': 1},
        {'text': 'Get overwhelmed', 'score': 3},
      ],
    },
    {
      'questionText': 'Problem Solving?',
      'answers': [
        {'text': 'Solve logically', 'score': 1},
        {'text': 'Solve Creatively', 'score': 1},
        {'text': 'Screw this', 'score': 3},
        {'text': 'Take help', 'score': 2},
      ],
    },
    {
      'questionText': 'Emotional Control?',
      'answers': [
        {'text': 'Overreact', 'score': 3},
        {'text': 'Regulate and Manage', 'score': 1},
        {'text': 'Just Disconnect', 'score': 2},
      ],
    },
    {
      'questionText': 'Goal Orientation?',
      'answers': [
        {'text': 'Result Based', 'score': 1},
        {'text': 'Unfocused', 'score': 3},
        {'text': 'Disinterested', 'score': 4},
        {'text': 'Process Driven', 'score': 2},
      ],
    },
    {
      'questionText': 'Public Speaking?',
      'answers': [
        {'text': 'Pee Pants', 'score': 3},
        {'text': 'Nervous', 'score': 2},
        {'text': 'Prepared', 'score': 1},
        {'text': 'Confident', 'score': 1},
      ],
    },
    {
      'questionText': 'Risk Taking?',
      'answers': [
        {'text': 'Calculated', 'score': 1},
        {'text': 'Be Bold', 'score': 1},
        {'text': 'Be Careful', 'score': 2},
        {'text': 'Avoid', 'score': 3},
      ],
    },
    {
      'questionText': 'Time Management?',
      'answers': [
        {'text': 'Planned', 'score': 1},
        {'text': 'Adjust', 'score': 2},
        {'text': 'Rush', 'score': 3},
        {'text': 'Procrastinate', 'score': 4},
      ],
    },
    {
      'questionText': 'Smallest Unit of Matter?',
      'answers': [
        {'text': 'Neutrons', 'score': 3},
        {'text': 'Electrons', 'score': 3},
        {'text': 'Atoms', 'score': 1},
        {'text': 'Molecules', 'score': 2},
      ],
    }
  ];

  final List<AssetImage> images = [
    AssetImage('assets/images/image1.jpg'),
    AssetImage('assets/images/image2.jpg'),
    AssetImage('assets/images/image3.jpg'),
    AssetImage('assets/images/image4.jpg'),
    AssetImage('assets/images/image5.jpg'),
    AssetImage('assets/images/image6.jpg'),
    AssetImage('assets/images/image7.jpg'),
    AssetImage('assets/images/image8.jpg'),
    AssetImage('assets/images/image9.jpg'),
    AssetImage('assets/images/image10.jpg'),
  ];

  var _questionIndex = 0;
  var _imageIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _imageIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex++;
      _imageIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Personality Quiz'),
          centerTitle: true,
          backgroundColor: Colors.green,
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                imageIndex: _imageIndex,
                images: images,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
