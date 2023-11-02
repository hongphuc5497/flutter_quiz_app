import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  final imagePath = 'assets/images/quiz-logo.png';
  final infoText = 'Learn Flutter in the fun way';
  final textBtn = 'Start Quiz';

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            imagePath,
            width: 300,
            color: const Color.fromARGB(150, 255, 255, 255),
          ),
          // Alternative solution for adding opacity to an image
          // Opacity(
          //   opacity: 0.1,
          //   child: Image.asset(
          //     imagePath,
          //     width: 300,
          //   ),
          // ),
          const SizedBox(height: 80),
          Text(
            infoText,
            style: const TextStyle(
              fontSize: 24,
              color: Color.fromARGB(255, 237, 223, 252),
            ),
          ),
          const SizedBox(height: 30),
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
            ),
            icon: const Icon(Icons.arrow_forward),
            label: Text(textBtn),
          ),
        ],
      ),
    );
  }
}
