import 'package:flutter/material.dart';
import 'package:flutter_app/locator.dart';
import 'package:flutter_app/web/router/route_name.dart';
import 'package:flutter_app/web/services/navigation_service.dart';
import 'package:flutter_app/web/ui/shared/custom_flat_button.dart';
import 'package:flutter_app/web/utils/assets_app.dart';
import 'package:lottie/lottie.dart';

class Error404View extends StatelessWidget {
  const Error404View({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 20,
          ),
          child: SizedBox(
            child: Lottie.asset(
              AssetsApp.lottieNotFound,
              width: 400,
              fit: BoxFit.contain,
            ),
          ),
        ),
        const Text(
          '404 - Not Found',
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold,
          ),
        ),
        CustomFlatButton(
          text: 'Ir a home',
          onPressed: () {
            locator<NavigationService>().navigateTo(RouteNameApp.home);
          },
        ),
      ],
    );
  }
}
