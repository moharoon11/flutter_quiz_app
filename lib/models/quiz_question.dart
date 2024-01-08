import 'package:flutter/material.dart';

class QuizQuestion extends StatelessWidget {
  const QuizQuestion(
    this.text,
    this.answers, {
    super.key,
  });

  final String text;
  final List<String> answers;

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
