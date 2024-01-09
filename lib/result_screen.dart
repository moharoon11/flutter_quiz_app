import 'package:flutter/material.dart';
import 'package:quiz_app/question_summary/question_summary.dart';
import 'package:quiz_app/questions.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen(this.chosenAnswers, this.onRestart, {super.key});

  final List<String> chosenAnswers;
  final void Function() onRestart;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add(
        {
          'question_index': i,
          'question': questions[i].text,
          'correct_answer': questions[i].answers[0],
          'user_answer': chosenAnswers[i]
        },
      );
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, Object>> summaryData = getSummaryData();
    final int totalQuestions = questions.length;
    final int noOfCorrectAnswers = summaryData
        .where((data) => data['user_answer'] == data['correct_answer'])
        .length;

    return SizedBox(
      width: double.infinity,
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text(
          'You answered $noOfCorrectAnswers out of $totalQuestions questions correctly!',
          style: GoogleFonts.lato(
            color: const Color.fromARGB(255, 230, 200, 253),
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 30,
        ),
        QuestionSummary(getSummaryData()),
        const SizedBox(
          height: 15,
        ),
        TextButton.icon(
          onPressed: onRestart,
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
          ),
          label: const Text(
            'Restart Quiz!',
            style: TextStyle(
              fontSize: 18,
            ),
            textAlign: TextAlign.center,
          ),
          icon: const Icon(Icons.restart_alt, size: 28),
        ),
      ]),
    );
  }
}
