import 'package:flutter/material.dart';

class CustomTextAnimation extends StatelessWidget {
  const CustomTextAnimation({
    super.key,
    required this.animationText,
  });

  final Animation<Offset> animationText;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animationText,
      builder: (context, _) {
        return SlideTransition(
          position: animationText,
          child: Text(
            "Ali Kasrawy",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        );
      },
    );
  }
}