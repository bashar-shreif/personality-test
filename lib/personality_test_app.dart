import 'package:flutter/material.dart';
import 'package:personality_test/models/personality.dart';
import 'package:personality_test/screens/question_screen.dart';
import 'package:personality_test/screens/result_screen.dart';
import 'package:personality_test/screens/start_screen.dart';

class PersonalityTestApp extends StatefulWidget {
  const PersonalityTestApp({super.key});
  @override
  State<StatefulWidget> createState() => _PersonalityTestAppState();
}

class _PersonalityTestAppState extends State<PersonalityTestApp> {
  Personality? result;
  Map<Personality, int> personalityScore = {
    Personality.feeler: 0,
    Personality.thinker: 0,
    Personality.planner: 0,
    Personality.adventurer: 0,
  };
  int currentQuestionPosition = 0;

  void proceed(Personality chosenPersona) {
    setState(() {
      currentQuestionPosition++;
      personalityScore.update(chosenPersona, (value) => value + 1);
      result = personalityScore.entries
          .reduce((a, b) => a.value > b.value ? a : b)
          .key;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Personality Test App',
      initialRoute: '/',
      routes: {
        '/': (context) => StartScreen(),
        '/question': (context) => QuestionScreen(
          currentPosition: currentQuestionPosition,
          updateScore: proceed,
        ),
        '/result': (context) => ResultScreen(result: result),
      },
    );
  }
}
