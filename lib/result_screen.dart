import 'package:adv_basics/data/questions.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key, required this.chosenAnswers});

  final List<String> chosenAnswers;

  List<Map<String,Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (int i = 0; i <= chosenAnswers.length; i++) {
      summary.add({
        "question_index": i,
        "current_question": questions[i].text,
        "correct_answer": questions[i].answers[0],
        "user_answer": chosenAnswers[i]
      });
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center ,
        children: [
          Text("You answered X out of Y questions correctly!"),
      
          SizedBox(height: 30),
          Text("List of answers and questions..."),
          SizedBox(height: 30),
          TextButton(onPressed: () {}, child: Text("Restart Quiz")),
        ],
      ),
    );
  }
}
