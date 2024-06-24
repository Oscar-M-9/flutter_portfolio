import 'package:flutter/material.dart';
import 'package:flutter_app/web/services/menu_service.dart';
import 'package:flutter_app/web/ui/shared/custom_app_menu.dart';
import 'package:flutter_app/web/ui/shared/widgets/mobile_menu.dart';
import 'package:provider/provider.dart';

class MainLayoutPage extends StatelessWidget {
  final Widget child;

  const MainLayoutPage({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ChangeNotifierProvider(
          create: (_) => MenuNotifier(),
          child: BodyPage(child: child),
        ),
        // ),
      ),
    );
  }
}

class BodyPage extends StatelessWidget {
  const BodyPage({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final menuProvider = context.watch<MenuNotifier>();
    return Stack(
      children: [
        Container(
          child: child,
        ),
        Positioned(
          top: 0,
          right: 0,
          left: 0,
          child: CustomAppMenu(provider: menuProvider),
        ),
        Positioned(
          top: 60,
          left: 0,
          bottom: 0,
          child: Visibility(
            visible: menuProvider.isOpen,
            child: MobileMenuExpanded(provider: menuProvider),
          ),
        ),
      ],
    );
  }
}
