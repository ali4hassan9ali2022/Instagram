import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.onTap,
    required this.borderRadius,
    required this.color,
    required this.width,
    required this.height,
    this.border,
    this.image,
    this.boxShadow,
    this.gradient,
    this.shape,
    required this.child,
  });
  final Widget child;
  final double borderRadius;
  final double width;
  final double height;
  final Color color;
  final VoidCallback? onTap;
  final BoxBorder? border;
  final DecorationImage? image;
  final List<BoxShadow>? boxShadow;
  final Gradient? gradient;
  final BoxShape? shape;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius),
          border: border,
          image: image,
          boxShadow: boxShadow,
          gradient: gradient,
          shape: shape ?? BoxShape.rectangle,
          color: color,
        ),
        child: child,
      ),
    );
  }
}
