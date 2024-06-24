import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/web/ui/shared/widgets/square_border.dart';

class LogoWeb extends StatelessWidget {
  const LogoWeb({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              AutoSizeText(
                'OSMI',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              AutoSizeText(
                'dev',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ],
          ),
          const SquareBorder(
            margin: EdgeInsets.only(left: 5),
            height: 50,
            width: 50,
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(30),
            ),
          ),
        ],
      ),
    );
  }
}
