import 'package:flutter/material.dart';
import 'package:flutter_app/locator.dart';
import 'package:flutter_app/web/router/route_name.dart';
import 'package:flutter_app/web/services/navigation_service.dart';
import 'package:flutter_app/web/ui/shared/custom_flat_button.dart';
import 'package:flutter_app/web/utils/assets_app.dart';

class TabletDesktopMenu extends StatelessWidget {
  const TabletDesktopMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 20,
      ),
      width: double.infinity,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              right: 20,
            ),
            child: SizedBox(
              width: 180,
              height: 40,
              child: Image.asset(
                AssetsApp.logo,
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
          CustomFlatButton(
            text: 'Inicio',
            onPressed: () =>
                locator<NavigationService>().navigateTo(RouteNameApp.home),
          ),
          CustomFlatButton(
            text: 'Servicios',
            onPressed: () =>
                locator<NavigationService>().navigateTo(RouteNameApp.service),
          ),
          CustomFlatButton(
            text: 'Proyectos',
            onPressed: () =>
                locator<NavigationService>().navigateTo(RouteNameApp.projects),
          ),
          CustomFlatButton(
            text: 'Blog',
            onPressed: () =>
                locator<NavigationService>().navigateTo(RouteNameApp.blog),
          ),
          CustomFlatButton(
            text: 'Contacto',
            onPressed: () =>
                locator<NavigationService>().navigateTo(RouteNameApp.contact),
          ),
        ],
      ),
    );
  }
}
