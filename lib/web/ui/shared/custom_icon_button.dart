import 'package:flutter/material.dart';
import 'package:flutter_app/web/utils/colors_app.dart';

class CustomIconButton extends StatelessWidget {
  final IconData icon;
  final void Function() onPressed;

  const CustomIconButton({
    super.key,
    required this.icon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 3.0,
      ),
      child: IconButton(
        style: _buttonStyle(),
        onPressed: onPressed,
        icon: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 5,
            horizontal: 0,
          ),
          child: AnimatedSwitcher(
            duration: const Duration(milliseconds: 200),
            transitionBuilder: (Widget child, Animation<double> animation) {
              return RotationTransition(
                turns: child.key == const ValueKey('icon1')
                    ? Tween<double>(begin: 1, end: 0.75).animate(animation)
                    : Tween<double>(begin: 0.75, end: 1).animate(animation),
                child: FadeTransition(opacity: animation, child: child),
              );
            },
            child: Icon(
              icon,
              key: ValueKey(icon == Icons.close_rounded ? 'icon1' : 'icon2'),
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
