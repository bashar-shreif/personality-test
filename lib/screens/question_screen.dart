import 'package:flutter/material.dart';
import '../models/personality.dart';
import '../data/questions.dart';
import '../widgets/custom_button.dart';
import '../theme.dart';

class QuestionScreen extends StatelessWidget {
  final int currentPosition;
  final Function(Personality) updateScore;

  const QuestionScreen({
    required this.currentPosition,
    required this.updateScore,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final question = questions[currentPosition];

    return Scaffold(
      backgroundColor: bgColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              question.question,
              style: questionStyle,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            ...question.answers.map(
              (a) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 6),
                child: CustomButton(
                  btn_txt: a.text,
                  on_pressed: () => updateScore(a.personality),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
