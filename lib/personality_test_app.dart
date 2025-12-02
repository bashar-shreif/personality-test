import 'package:flutter/material.dart';
import 'models/personality.dart';
import 'data/questions.dart';
import 'screens/start_screen.dart';
import 'screens/question_screen.dart';
import 'screens/result_screen.dart';

class PersonalityTestApp extends StatefulWidget {
  const PersonalityTestApp({super.key});

  @override
  State<PersonalityTestApp> createState() => _PersonalityTestAppState();
}

class _PersonalityTestAppState extends State<PersonalityTestApp> {
  Personality? result;
  int currentQuestionPosition = 0;
  String currentScreen = 'start';

  Map<Personality, int> personalityScore = {
    Personality.feeler: 0,
    Personality.thinker: 0,
    Personality.planner: 0,
    Personality.adventurer: 0,
  };

  void proceed(Personality chosen) {
    setState(() {
      personalityScore[chosen] = personalityScore[chosen]! + 1;
      currentQuestionPosition++;

      if (currentQuestionPosition >= questions.length) {
        result = personalityScore.entries
            .reduce((a, b) => a.value > b.value ? a : b)
            .key;
        currentScreen = 'result';
      } else {
        currentScreen = 'question';
      }
    });
  }

  void restart() {
    setState(() {
      result = null;
      currentQuestionPosition = 0;
      personalityScore = {
        Personality.feeler: 0,
        Personality.thinker: 0,
        Personality.planner: 0,
        Personality.adventurer: 0,
      };
      currentScreen = 'start';
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget screen;

    switch (currentScreen) {
      case 'question':
        screen = QuestionScreen(
          currentPosition: currentQuestionPosition,
          updateScore: proceed,
        );
        break;
      case 'result':
        screen = ResultScreen(result: result, restart: restart);
        break;
      case 'start':
      default:
        screen = StartScreen(
          onStart: () => setState(() => currentScreen = 'question'),
        );
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Personality Test App',
      home: screen,
    );
  }
}
