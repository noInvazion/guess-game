import 'package:flutter/material.dart';

class LayoutScreen extends StatelessWidget {
  final void Function() onTap; 

  const LayoutScreen(this.onTap, {super.key}); 
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          "assets/images/quiz-logo.png",
          width: 300,
          color: const Color.fromARGB(150, 255, 255, 255),
        ),
        const SizedBox(height: 30),
        const Text(
          "Fundamentals of Programming",
          style: TextStyle(
            color: Color.fromARGB(255, 255, 201, 185),
            fontSize: 22,
          ),
        ),
        const SizedBox(height: 30),
        OutlinedButton(
          onPressed: onTap,
          child: const Text(
            "Start Game",
            style: TextStyle(color: Color.fromARGB(255, 255, 201, 185)),
          ),
        ),
      ],
    );
  }
}
