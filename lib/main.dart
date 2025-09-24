import "package:flutter/material.dart";

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                const Color.fromARGB(255, 175, 54, 17),
                const Color.fromARGB(255, 236, 74, 25),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset("assets/images/quiz-logo.png", width: 300, color: const Color.fromARGB(150, 255, 255, 255),),

                SizedBox(height: 30),

                Text(
                  "Fundamentals of Programming",
                  style: TextStyle(
                    color: const Color.fromARGB(255, 255, 201, 185),
                    fontSize: 22,
                  ),
                ),

                SizedBox(height: 30),

                OutlinedButton(
                  
                  onPressed: (){},
                  child: Text(
                    "Start Game",
                    style: TextStyle(color: Color.fromARGB(255, 255, 201, 185),),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
