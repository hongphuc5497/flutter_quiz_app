import 'package:flutter/material.dart';

import 'package:flutter_quiz_app/data/questions.dart';

import 'package:flutter_quiz_app/models/quiz_question.dart';

import 'package:flutter_quiz_app/answer_button.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  final currenQuestion = questions[2];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currenQuestion.text,
              style: const TextStyle(
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            ...currenQuestion.answers.map((item) {
              return AnswerButton(answerText: item, onTap: () => {});
            }),
          ],
        ),
      ),
    );
  }
}
