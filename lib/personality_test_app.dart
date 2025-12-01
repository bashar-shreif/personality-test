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
  int currentQuestion;
  final Personality result;
  Map<Personality, int> personalityScore;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Personality Test App',
      initialRoute: '/',
      routes: {
        '/': (context) => StartScreen(),
        '/question': (context) => QuestionScreen(),
        '/result': (context) => ResultScreen(),
      },
    );
  }
}
