import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_app/web/ui/shared/widgets/max_width.dart';
import 'package:flutter_app/web/ui/shared/widgets/text_with_box_stack.dart';
import 'package:flutter_app/web/ui/views/footer/footer_view.dart';
import 'package:flutter_app/web/ui/views/service/widgets/card_service_widget.dart';
import 'package:flutter_app/web/utils/assets_app.dart';
import 'package:flutter_app/web/utils/constants_app.dart';

class ServiceView extends StatelessWidget {
  const ServiceView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 100,
          ),
          const SizedBox(
            width: 120,
            child: TextWithBoxStack(
              text: 'CHECK SERVICES',
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: FittedBox(
              child: AutoSizeText(
                "MY BEST SERVICES",
                style: Theme.of(context)
                    .textTheme
                    .displayMedium
                    ?.copyWith(fontSize: 28),
              ),
            ),
          ),
          MaxWidth(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 30),
              child: Wrap(
                spacing: 12,
                runSpacing: 10,
                children: ConstansApp.services.map((item) {
                  return CardServiceWidget(
                    image: Image.asset(
                      item.image ?? AssetsApp.iconWebsite,
                    ),
                    title: item.title ?? "Titulo del Servicio",
                    description: item.description ?? "Descripción del servicio",
                    onPressed: () => null,
                  ).animate().flipV(
                        delay: Duration(milliseconds: item.delay ?? 100),
                      );
                }).toList(),
              ),
            ),
          ),
          const FooterView(),
        ],
      ),
    );
  }
}
