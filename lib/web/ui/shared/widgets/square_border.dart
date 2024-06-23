import 'package:flutter/material.dart';
import 'package:flutter_app/web/utils/colors_app.dart';

class SquareBorder extends StatelessWidget {
  final double height;
  final double width;
  final double borderWidth;
  final BorderRadiusGeometry borderRadius;
  final Color borderColor;
  final Widget? child;
  final EdgeInsetsGeometry? margin;
  const SquareBorder({
    super.key,
    required this.height,
    required this.width,
    required this.borderRadius,
    this.borderWidth = 4.0,
    this.borderColor = ColorsApp.appYellow,
    this.child,
    this.margin,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      height: height,
      width: width,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        border: Border.all(
          color: borderColor,
          width: borderWidth,
        ),
        borderRadius: borderRadius,
      ),
      child: child,
    );
  }
}
