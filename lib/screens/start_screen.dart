import 'package:flutter/material.dart';
import 'package:personality_test/widgets/custom_button.dart';

class StartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Discover Your Personality Type!"),
        GridView(),
        CustomButton(),
      ],
    );
  }
}
