import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.purple[300],
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/quiz-logo.png'),
              SizedBox(
                height: 20,
              ),
              Text(
                'Learn Flutter in the fun way',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple[600],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  foregroundColor: Colors.purple[300],
                  backgroundColor: Colors.purple[300],
                ),
                child: Text(
                  'Start Quiz',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
