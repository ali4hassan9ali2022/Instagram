import 'package:flutter/material.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';


class CustomIconAnimation extends StatelessWidget {
  const CustomIconAnimation({
    super.key,
    required this.animationController,
    required this.scaleAnimation,
    required this.colorAnimation,
  });

  final AnimationController animationController;
  final Animation<double> scaleAnimation;
  final Animation<Color?> colorAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animationController,
      builder: (context, _) {
        return Transform.scale(
          scale: scaleAnimation.value,
          child: Icon(
            FontAwesomeIcons.instagram,
            size: 150,
            color: colorAnimation.value,
          ),
        );
      },
    );
  }
}
