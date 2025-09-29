import 'package:adv_basics/data/questions.dart';
import 'package:adv_basics/result_screen.dart';
import 'package:flutter/material.dart';
import 'package:adv_basics/layout_screen.dart';
import 'package:adv_basics/question_screen.dart';

class Background extends StatefulWidget {
  const Background({super.key});

  @override
  State<Background> createState() => _BackgroundState();
}

class _BackgroundState extends State<Background> {
  String activeScreen = "home-page";
  List<String> selectedAnswers = [];

  void switchScreen() {
    setState(() {
      activeScreen = "question-page";
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);

    if (selectedAnswers.length == questions.length) {
      setState(() {
        selectedAnswers = [];
        activeScreen = "result-page";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget ScreenWidget = LayoutScreen(switchScreen);

    if (activeScreen == "question-page") {
      ScreenWidget = QuestionScreen(onSelectAnswer: chooseAnswer);
    }

    if (activeScreen == "result-page") {
      ScreenWidget = ResultScreen();
    }

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 175, 54, 17),
              Color.fromARGB(255, 236, 74, 25),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: ScreenWidget,
        ),
      ),
    );
  }
}
