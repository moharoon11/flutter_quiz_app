import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/quiz-logo.png',
          width: 300,
          color: const Color.fromARGB(160, 255, 255, 255),
        ),
        const SizedBox(height: 30),
        const Text(
          'Learn Flutter in fun way!',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
          ),
        ),
        const SizedBox(height: 30),
        OutlinedButton.icon(
          style: OutlinedButton.styleFrom(
            foregroundColor: Colors.white,
          ),
          icon: const Icon(
            Icons.arrow_forward,
            size: 25,
          ),
          label: const Text(
            'Start Quiz',
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          onPressed: () {},
        ),
      ],
    ));
  }
}
