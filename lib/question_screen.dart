import 'package:adv_basics/data/questions.dart';
import 'package:adv_basics/question_option.dart';
import 'package:flutter/material.dart';
// import 'package:adv_basics/models/quiz_questions.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key, required this.onSelectAnswer});

  final void Function(String answer) onSelectAnswer;

  @override
  State<QuestionScreen> createState() => _QuestionScreen();
}

class _QuestionScreen extends State<QuestionScreen> {
  var questionCounter = 0;

  void onQuestionPicked(String selectedAnswers) {
    widget.onSelectAnswer(selectedAnswers);
    setState(() {
      questionCounter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[questionCounter];

    return Container(
      padding: EdgeInsets.all(40),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            currentQuestion.text,
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white, fontSize: 15),
          ),
          SizedBox(height: 30),
          ...currentQuestion.shuffledAnswers.map((answer) {
            return QuestionOption(answer, () {
              onQuestionPicked(answer);
            });
          }),
        ],
      ),
    );
  }
}
