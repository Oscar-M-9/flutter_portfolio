import 'package:flutter/material.dart';
import 'package:flutter_app/web/services/menu_service.dart';
import 'package:flutter_app/web/ui/shared/widgets/mobile_menu.dart';
import 'package:flutter_app/web/ui/shared/widgets/tablet_desktop_menu.dart';
import 'package:flutter_app/web/ui/shared/widgets/glass_morphism.dart';
import 'package:flutter_app/web/utils/colors_app.dart';

class CustomAppMenu extends StatelessWidget {
  final MenuNotifier provider;
  const CustomAppMenu({
    super.key,
    required this.provider,
  });

  @override
  Widget build(BuildContext context) {
    return GlassMorphism(
      blur: 10,
      color: ColorsApp.appLight,
      opacity: 0.2,
      borderRadius: BorderRadius.circular(5),
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth < 768) {
            return MobileMenu(
              provider: provider,
            );
          }
          return const TabletDesktopMenu();
        },
      ),
    );
  }
}
