import 'package:flutter/material.dart';

const Color bgColor = Color(0xFF3B5565);
const Color buttonColor = Color(0xFFE8D7FF);
const Color textColor = Colors.white;

TextStyle titleStyle = const TextStyle(
  color: textColor,
  fontSize: 26,
  fontWeight: FontWeight.bold,
);

TextStyle questionStyle = const TextStyle(
  color: textColor,
  fontSize: 22,
  fontWeight: FontWeight.w600,
);

TextStyle answerBtnStyle = const TextStyle(
  color: Color(0xFF333333),
  fontSize: 16,
);

TextStyle resultTitleStyle = const TextStyle(
  color: textColor,
  fontSize: 24,
  fontWeight: FontWeight.w700,
);

ButtonStyle roundedButton = ElevatedButton.styleFrom(
  backgroundColor: buttonColor,
  foregroundColor: Color(0xFF333333),
  padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 26),
  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
);
