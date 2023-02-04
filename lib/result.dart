import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;

  Result(this.resultScore, this.resetHandler);

  Widget get resultImage {
    var resultImage;
    if (resultScore <= 10) {
      resultImage = Image.asset(
        "assets/images/result1.png",
        fit: BoxFit.contain,
        width: 400.0,
        height: 400.0,
      );
    } else if (resultScore <= 20) {
      resultImage = Image.asset(
        "assets/images/result2.png",
        fit: BoxFit.contain,
        width: 400.0,
        height: 400.0,
      );
    } else if (resultScore <= 25) {
      resultImage = Image.asset(
        "assets/images/result3.png",
        fit: BoxFit.contain,
        width: 400.0,
        height: 400.0,
      );
    } else if (resultScore <= 30) {
      resultImage = Image.asset(
        "assets/images/result4.png",
        fit: BoxFit.contain,
        width: 400.0,
        height: 400.0,
      );
    } else {
      resultImage = Image.asset(
        "assets/images/result5.png",
        fit: BoxFit.contain,
        width: 400.0,
        height: 400.0,
      );
    }
    return resultImage;
  }

  String get resultPhrase {
    var resultText = 'You smashed it!';
    if (resultScore <= 10) {
      resultText = "You are an amazing asset";
    } else if (resultScore <= 20) {
      resultText = "You are a good lad!";
    } else if (resultScore <= 25) {
      resultText = "You are an ordinary person...";
    } else if (resultScore <= 30) {
      resultText = "You are not impressing..";
    } else {
      resultText = "What a retard.. Don't take this quiz ever again!";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          resultImage,
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          ElevatedButton(
            child: Text('Restart Quiz'),
            onPressed: resetHandler,
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.red)),
          )
        ],
      ),
    );
  }
}
