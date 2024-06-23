import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_app/web/ui/views/home/widgets/circular_pulsing_button.dart';
import 'package:flutter_app/web/ui/shared/widgets/image_mask.dart';
import 'package:flutter_app/web/utils/colors_app.dart';
import 'package:flutter_app/web/utils/assets_app.dart';
import 'package:flutter_app/web/utils/constants_app.dart';

class Section1HomeView extends StatelessWidget {
  const Section1HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      return Padding(
        padding: EdgeInsets.only(
          top: 60,
          bottom: constraints.maxWidth < 675 ? 50 : 100,
        ),
        child: Stack(
          children: [
            SizedBox(
              width: double.infinity,
              child: Wrap(
                alignment: WrapAlignment.spaceAround,
                runAlignment: WrapAlignment.center,
                crossAxisAlignment: WrapCrossAlignment.center,
                runSpacing: 8.0,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: SizedBox(
                      width: 350,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          AutoSizeText(
                            ConstansApp.vocation,
                            style: Theme.of(context).textTheme.displayMedium,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const _Contact(),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 300,
                    height: 400,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Flexible(
                          child: MaskedImage(
                            imageAsset: AssetsApp.avatar1,
                          ),
                        ).animate().fadeIn().moveX(
                            duration: const Duration(milliseconds: 350),
                            begin: 120,
                            end: 0),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    });
  }
}

class _Contact extends StatelessWidget {
  const _Contact();

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Flexible(
          child: AutoSizeText(
            ConstansApp.author,
            // style: Theme.of(context).textTheme.bodySmall,
            style: TextStyle(
              fontSize: 14.0,
              fontWeight: FontWeight.w600,
              color: ColorsApp.appGray3,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Icon(
            Icons.arrow_forward_rounded,
            color: ColorsApp.appGray3,
          ),
        ),
        Flexible(
          child: SizedBox(
            height: 120,
            width: 120,
            child: CircularPulsingButton(),
          ),
        ),
      ],
    );
  }
}
