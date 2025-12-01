import 'package:flutter/material.dart';
import 'package:personality_test/widgets/custom_button.dart';

class StartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Discover Your Personality Type!"),
        GridView.count(
          crossAxisCount: 2,
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          children: [
            Center(child: Text("💖")),
            Center(child: Text("🧠")),
            Center(child: Text("🗓️")),
            Center(child: Text("🗺️")),
          ],
        ),
        CustomButton(
          btn_txt: "Start Test",
          on_pressed: () {
            Navigator.pushNamed(context, '/question');
          },
        ),
      ],
    );
  }
}
