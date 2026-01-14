import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String content;
  final Color color;

  const CustomText({super.key, required this.content, required this.color});

  @override
  Widget build(BuildContext context) {
    return Text(
      content,
      style: TextStyle(color: color),
    );
  }
}