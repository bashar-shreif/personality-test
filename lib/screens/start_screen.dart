import 'package:flutter/material.dart';
import '../widgets/custom_button.dart';
import '../theme.dart';

class StartScreen extends StatelessWidget {
  final VoidCallback onStart;

  const StartScreen({required this.onStart, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Discover Your\nPersonality Type!",
              style: titleStyle,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text("❤️", style: TextStyle(fontSize: 40)),
                SizedBox(width: 20),
                Text("🗺️", style: TextStyle(fontSize: 40)),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text("🗓️", style: TextStyle(fontSize: 40)),
                SizedBox(width: 20),
                Text("🧠", style: TextStyle(fontSize: 40)),
              ],
            ),
            const SizedBox(height: 10),
            CustomButton(btn_txt: "Start Test", on_pressed: onStart),
          ],
        ),
      ),
    );
  }
}
