import 'package:flutter/material.dart';
import 'package:flutter_app/web/utils/colors_app.dart';

class CustomFlatButton extends StatelessWidget {
  final String text;
  final void Function() onPressed;

  const CustomFlatButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 3.0,
      ),
      child: OutlinedButton(
        style: _buttonStyle(),
        onPressed: onPressed,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 5,
            horizontal: 0,
          ),
          child: Text(
            text,
            style: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 14.0,
            ),
          ),
        ),
      ),
    );
  }

  ButtonStyle _buttonStyle() {
    return ButtonStyle(
      overlayColor: MaterialStateProperty.resolveWith<Color?>(
        (Set<MaterialState> states) {
          if (states.contains(MaterialState.hovered)) {
            return Colors.transparent;
          } else if (states.contains(MaterialState.pressed)) {
            return Colors.grey.withOpacity(0.9);
          } else if (states.contains(MaterialState.selected)) {
            return ColorsApp.appGray;
          }
          return null;
        },
      ),
      side: MaterialStateProperty.resolveWith<BorderSide?>(
        (Set<MaterialState> states) {
          if (states.contains(MaterialState.hovered)) {
            return const BorderSide(
              color: ColorsApp.colorRajah300,
              width: 1.0,
            ); // Border color when hovered
          }
          return BorderSide.none; // Default border color
        },
      ),
      foregroundColor: MaterialStateProperty.resolveWith<Color?>(
        (Set<MaterialState> states) {
          if (states.contains(MaterialState.hovered)) {
            return ColorsApp.colorRajah400;
          }
          // return ColorsApp.colorRajah950.withOpacity(.5);
          return ColorsApp.appDark;
        },
      ),
      backgroundColor: MaterialStateProperty.resolveWith(
        (states) => Colors.transparent,
      ),
      padding: MaterialStateProperty.resolveWith(
        (states) => const EdgeInsets.symmetric(
          horizontal: 8,
        ),
      ),
      minimumSize: MaterialStateProperty.resolveWith(
        (states) => const Size(50, 20),
      ),
    );
  }
}
