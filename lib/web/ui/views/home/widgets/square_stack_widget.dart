import 'package:flutter/material.dart';
import 'package:flutter_app/web/ui/shared/widgets/glass_morphism.dart';
import 'package:flutter_app/web/utils/colors_app.dart';

class SquareStack extends StatelessWidget {
  final double top;
  final double right;
  final double? bottom;
  final double? left;
  final double blur;
  final double opacity;
  final double height;
  final double width;
  final double? borderRadius;

  const SquareStack({
    super.key,
    required this.top,
    required this.right,
    this.bottom,
    this.left,
    required this.blur,
    required this.opacity,
    required this.height,
    required this.width,
    this.borderRadius = 10,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      right: right,
      bottom: bottom,
      left: left,
      child: GlassMorphism(
        blur: blur,
        opacity: opacity,
        color: ColorsApp.appYellow,
        borderRadius: BorderRadius.all(Radius.circular(borderRadius!)),
        child: SizedBox(
          height: height,
          width: width,
        ),
      ),
    );
  }
}
