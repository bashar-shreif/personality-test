import 'package:flutter/material.dart';
import '../widgets/custom_button.dart';
import '../models/personality.dart';
import '../theme.dart';

class ResultScreen extends StatelessWidget {
  final Personality? result;
  final VoidCallback restart;

  const ResultScreen({required this.result, required this.restart, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              personalityMessage[result] ?? 'Unknown',
              style: resultTitleStyle,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            CustomButton(btn_txt: "Restart", on_pressed: restart),
          ],
        ),
      ),
    );
  }
}
