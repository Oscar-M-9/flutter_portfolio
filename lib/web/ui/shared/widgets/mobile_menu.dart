import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_app/locator.dart';
import 'package:flutter_app/web/router/route_name.dart';
import 'package:flutter_app/web/services/menu_service.dart';
import 'package:flutter_app/web/services/navigation_service.dart';
import 'package:flutter_app/web/ui/shared/custom_flat_button.dart';
import 'package:flutter_app/web/ui/shared/custom_icon_button.dart';
import 'package:flutter_app/web/ui/shared/widgets/glass_morphism.dart';
import 'package:flutter_app/web/ui/shared/widgets/logo_web.dart';
import 'package:flutter_app/web/utils/colors_app.dart';

class MobileMenu extends StatelessWidget {
  final MenuNotifier provider;
  const MobileMenu({
    super.key,
    required this.provider,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 5,
      ),
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(
            width: 150,
            height: 30,
            child: LogoWeb(),
          ),
          CustomIconButton(
            icon: provider.isOpen ? Icons.close_rounded : Icons.menu_rounded,
            onPressed: () {
              final newStatus = !provider.isOpen;
              provider.isOpen = newStatus;
              print('press menu $newStatus');
            },
          ).animate().scale(),
        ],
      ),
    );
  }
}

class MobileMenuExpanded extends StatelessWidget {
  final MenuNotifier provider;
  const MobileMenuExpanded({
    super.key,
    required this.provider,
  });

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(
        minWidth: 200,
      ),
      child: GlassMorphism(
        blur: 10,
        opacity: 0.6,
        color: ColorsApp.appLight,
        borderRadius: BorderRadius.circular(5),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 5,
          ),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomFlatButton(
                  text: 'Inicio',
                  onPressed: () {
                    locator<NavigationService>().navigateTo(RouteNameApp.home);
                    provider.isOpen = false;
                  },
                ),
                CustomFlatButton(
                  text: 'Servicios',
                  onPressed: () {
                    locator<NavigationService>()
                        .navigateTo(RouteNameApp.service);
                    provider.isOpen = false;
                  },
                ),
                CustomFlatButton(
                  text: 'Proyectos',
                  onPressed: () {
                    locator<NavigationService>()
                        .navigateTo(RouteNameApp.projects);
                    provider.isOpen = false;
                  },
                ),
                CustomFlatButton(
                  text: 'Blog',
                  onPressed: () {
                    locator<NavigationService>().navigateTo(RouteNameApp.blog);
                    provider.isOpen = false;
                  },
                ),
                CustomFlatButton(
                  text: 'Contacto',
                  onPressed: () {
                    locator<NavigationService>()
                        .navigateTo(RouteNameApp.contact);
                    provider.isOpen = false;
                  },
                ),
              ],
            ),
          ),
        ),
      ).animate().fadeIn(duration: 200.ms).scale(duration: 200.ms),
    );
  }
}
