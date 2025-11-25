import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String btn_txt;
  final VoidCallback on_pressed;
  const CustomButton({required this.btn_txt, this.on_pressed, super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: on_pressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 14),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        elevation: 3,
      ),
      child: Text(
        btn_txt,
        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
      ),
    );
  }
}
