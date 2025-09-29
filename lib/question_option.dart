import 'package:flutter/material.dart';

class QuestionOption extends StatelessWidget {
  const QuestionOption(this.answerText, this.onTap, {super.key});

  final String answerText;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
        backgroundColor: const Color.fromARGB(255, 204, 84, 47),
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(40),
        ),
      ),
      onPressed: onTap,
      child: Text(answerText, textAlign: TextAlign.center),
    );
  }
}
