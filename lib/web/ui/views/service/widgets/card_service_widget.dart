import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_app/web/ui/shared/widgets/square_border.dart';
import 'package:flutter_app/web/utils/colors_app.dart';

class CardServiceWidget extends StatefulWidget {
  final Widget image;
  final String title;
  final String description;
  final void Function() onPressed;
  const CardServiceWidget({
    super.key,
    required this.image,
    required this.title,
    required this.description,
    required this.onPressed,
  });

  @override
  State<CardServiceWidget> createState() => _CardServiceWidgetState();
}

class _CardServiceWidgetState extends State<CardServiceWidget> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onHover: (_) {
        setState(() {
          _isHovered = true;
        });
      },
      onExit: (_) {
        setState(() {
          _isHovered = false;
        });
      },
      child: Container(
        width: 250,
        decoration: BoxDecoration(
          color: _isHovered ? ColorsApp.colorRajah50 : ColorsApp.appLight2,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: SquareBorder(
                  height: 120,
                  width: 120,
                  borderColor: ColorsApp.colorRajah200,
                  borderWidth: 3.0,
                  borderRadius: const BorderRadius.only(
                    bottomRight: Radius.circular(60),
                    topLeft: Radius.circular(15),
                  ),
                  child: SizedBox(
                    width: 100,
                    child: widget.image,
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10).copyWith(top: 20),
                child: AutoSizeText(
                  widget.title,
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  widget.description,
                  style: Theme.of(context).textTheme.bodyMedium,
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: IconButton(
                  style: ButtonStyle(
                      side: MaterialStateProperty.all(
                        BorderSide(
                          width: 4.0,
                          color: _isHovered
                              ? ColorsApp.appYellow
                              : ColorsApp.appGray3,
                        ),
                      ),
                      overlayColor:
                          const MaterialStatePropertyAll(ColorsApp.appYellow)),
                  onPressed: widget.onPressed,
                  icon: const Icon(
                    Icons.arrow_forward_rounded,
                    color: ColorsApp.appDark,
                  ),
                ),
              )
            ],
          ),
        ),
      ).animate(
        effects: _isHovered ? const [ShaderEffect()] : [],
      ),
    );
  }
}
