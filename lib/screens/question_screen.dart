import 'package:flutter/material.dart';
import 'package:personality_test/models/personality.dart';
import 'package:personality_test/models/question.dart';
import 'package:personality_test/data/questions.dart';
import 'package:personality_test/widgets/custom_button.dart';

class QuestionScreen extends StatelessWidget {
  int currentPosition;
  final Function(Personality) updateScore;
  List<Question> data = questions;

  QuestionScreen({required this.currentPosition, required this.updateScore});

  @override
  Widget build(BuildContext context) {
    Question question = data[currentPosition];
    return Column(
      children: [
        Text(question.question),
        CustomButton(
          btn_txt: question.answers[0].text,
          on_pressed: updateScore(question.answers[0].personality),
        ),
        CustomButton(
          btn_txt: question.answers[1].text,
          on_pressed: updateScore(question.answers[1].personality),
        ),
        CustomButton(
          btn_txt: question.answers[2].text,
          on_pressed: updateScore(question.answers[2].personality),
        ),
        CustomButton(
          btn_txt: question.answers[3].text,
          on_pressed: updateScore(question.answers[3].personality),
        ),
      ],
    );
  }
}
