import 'package:flutter/material.dart';
import 'package:quiz_app/question_summary.dart';
import 'package:quiz_app/questions.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen(this.choosenAnswers, {super.key});

  final List<String> choosenAnswers;

  List<Map<String, Object>> getSummaryData() {
    List<Map<String, Object>> summary = [];

    for (var i = 0; i < choosenAnswers.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].text,
        'correct_answer': questions[i].answers[0],
        'choosen_answer': choosenAnswers[i],
      });
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        const Text('You answered X out of Y questions correctly!'),
        const SizedBox(
          height: 30,
        ),
        const Text('List of answers and questions...'),
        const SizedBox(
          height: 30,
        ),
        QuestionSummary(getSummaryData()),
        TextButton(
          onPressed: () {},
          child: const Text('Restart Quiz!'),
        )
      ]),
    );
  }
}
