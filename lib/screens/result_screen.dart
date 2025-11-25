import 'package:flutter/material.dart';
import 'package:personality_test/models/personality.dart';

class ResultScreen extends StatelessWidget {
  final Personality? result;

  ResultScreen({required this.result});

  @override
  Widget build(BuildContext context) {
    return Text(personalityMessage[result]!);
  }
}
