import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String text;
  final Color background_color;
  final Color text_color;

  const MyButton({
    super.key,
    required this.text,
    required this.background_color,
    required this.text_color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: background_color,
        borderRadius: BorderRadius.circular(20),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Text(
        text,
        style: TextStyle(color: text_color),
      ),
    );
  }
}
