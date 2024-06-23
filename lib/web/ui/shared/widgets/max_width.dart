import 'package:flutter/material.dart';

class MaxWidth extends StatelessWidget {
  final Widget child;
  const MaxWidth({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(
        maxWidth: 1200,
      ),
      child: child,
    );
  }
}
