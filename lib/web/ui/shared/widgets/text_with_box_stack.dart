import 'package:flutter/material.dart';
import 'package:flutter_app/web/utils/colors_app.dart';

class TextWithBoxStack extends StatelessWidget {
  final String text;
  final AlignmentGeometry alignment;
  const TextWithBoxStack({
    super.key,
    required this.text,
    this.alignment = AlignmentDirectional.topStart,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: alignment,
      children: [
        Container(
          height: 30,
          width: 30,
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            border: Border.all(
              color: ColorsApp.appYellow,
              width: 3.0,
            ),
            borderRadius: const BorderRadius.only(
              bottomRight: Radius.circular(20),
            ),
          ),
        ),
        Positioned(
          top: 5.0,
          left: 10.0,
          child: Text(
            text,
            style: const TextStyle(
              fontWeight: FontWeight.w600,
              color: ColorsApp.appDark,
              fontSize: 12.0,
            ),
          ),
        ),
      ],
    );
  }
}
