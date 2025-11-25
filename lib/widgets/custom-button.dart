import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String btn_txt;
  final Function on_pressed;
  const CustomButton({super.key, required this.btn_txt, this.on_pressed})

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: this.on_pressed, child: Text(this.btn_txt))
  }
}