import 'package:flutter/material.dart';

class MaskedImage extends StatelessWidget {
  final String imageAsset;

  const MaskedImage({
    super.key,
    required this.imageAsset,
  });

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (Rect bounds) {
        return const LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.black,
            Colors.transparent,
          ],
          stops: [0.9, 1.0], // Ajusta los valores según la proporción deseada
        ).createShader(bounds);
      },
      blendMode: BlendMode.dstIn,
      child: Image.asset(
        imageAsset,
        fit: BoxFit.contain,
      ),
    );
  }
}
