import 'package:flutter/material.dart';
import 'package:flutter_app/locator.dart';
import 'package:flutter_app/web/router/route_name.dart';
import 'package:flutter_app/web/services/navigation_service.dart';
import 'package:flutter_app/web/utils/colors_app.dart';

class CircularPulsingButton extends StatefulWidget {
  const CircularPulsingButton({super.key});

  @override
  CircularPulsingButtonState createState() => CircularPulsingButtonState();
}

class CircularPulsingButtonState extends State<CircularPulsingButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  bool _isHovered = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    _animation = Tween<double>(begin: 0.0, end: 1.0).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    ));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _onPressed() {
    locator<NavigationService>().navigateTo(RouteNameApp.contact);
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (_) {
        setState(() {
          _isHovered = true;
        });
        _controller.repeat(reverse: true);
      },
      onExit: (_) {
        setState(() {
          _isHovered = false;
        });
        _controller.stop();
        _controller.reset();
      },
      child: Stack(
        alignment: Alignment.center,
        children: [
          AnimatedBuilder(
            animation: _animation,
            builder: (context, child) {
              return Visibility(
                visible: _isHovered,
                child: Container(
                  width: 100 + 20 * _animation.value,
                  height: 100 + 20 * _animation.value,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color:
                          ColorsApp.appYellow.withOpacity(1 - _animation.value),
                      width: 2.0,
                    ),
                  ),
                ),
              );
            },
          ),
          GestureDetector(
            onTap: _onPressed,
            child: Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: ColorsApp.appYellow.withOpacity(0.1),
                border: Border.all(
                  color: ColorsApp.appYellow,
                  width: 2,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  FittedBox(
                    fit: BoxFit.contain,
                    child: Icon(
                      Icons.quick_contacts_mail_rounded,
                      color: ColorsApp.appYellow.withOpacity(.8),
                      size: 30.0,
                    ),
                  ),
                  const FittedBox(
                    fit: BoxFit.contain,
                    child: Text(
                      'Contáctame',
                      style: TextStyle(
                        fontSize: 10.0,
                        fontWeight: FontWeight.w600,
                        color: ColorsApp.colorRajah900,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
