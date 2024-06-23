import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/web/ui/shared/widgets/glass_morphism.dart';
import 'package:flutter_app/web/ui/shared/widgets/text_with_box_stack.dart';
import 'package:flutter_app/web/utils/colors_app.dart';
import 'package:flutter_app/web/utils/assets_app.dart';
import 'package:flutter_app/web/utils/constants_app.dart';

class Section2HomeView extends StatelessWidget {
  const Section2HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: double.infinity,
      child: Wrap(
        alignment: WrapAlignment.spaceAround,
        runAlignment: WrapAlignment.center,
        crossAxisAlignment: WrapCrossAlignment.center,
        runSpacing: 50.0,
        children: [
          AboutMeDescription(),
          AboutMeContainer(),
        ],
      ),
    );
  }
}

class AboutMeContainer extends StatelessWidget {
  const AboutMeContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10).copyWith(bottom: 20),
      child: Container(
        width: 350,
        height: 450,
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [
              ColorsApp.colorSeagull700,
              ColorsApp.colorSeagull800,
              ColorsApp.colorSeagull700,
              ColorsApp.colorSeagull800,
            ],
          ),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Stack(
          children: [
            const Positioned(
              bottom: 0,
              right: 0,
              left: 0,
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
                child: Image(
                  image: AssetImage(AssetsApp.avatar2),
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              left: 0,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: GlassMorphism(
                  blur: 5,
                  opacity: 0.2,
                  color: ColorsApp.appLight,
                  child: SizedBox(
                    height: 120,
                    child: Row(
                      children: [
                        Container(
                          width: 120,
                          height: double.infinity,
                          decoration: BoxDecoration(
                            color: ColorsApp.appDark,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              AutoSizeText(
                                ConstansApp.yearExprience,
                                style: TextStyle(
                                  color: ColorsApp.appYellow,
                                  fontSize: 22,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              AutoSizeText(
                                'Years Exprience',
                                style: TextStyle(
                                  color: ColorsApp.appLight,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Flexible(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 10,
                            ),
                            child: AutoSizeText(
                              ConstansApp.infoExprience,
                              style: Theme.of(context).textTheme.bodySmall,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AboutMeDescription extends StatelessWidget {
  const AboutMeDescription({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15).copyWith(top: 10),
      child: SizedBox(
        width: 450,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              width: double.infinity,
              child: TextWithBoxStack(text: 'ABOUT ME'),
            ),
            AutoSizeText(
              ConstansApp.titleAbout.toUpperCase(),
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(
              height: 20,
            ),
            AutoSizeText(
              ConstansApp.descriptionAbout,
              // style: Theme.of(context).textTheme.bodySmall,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(
              height: 20,
            ),
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  PlusNumber(
                    text: ConstansApp.info1NumberAbout,
                  ),
                  InfoPlusNumber(
                    text1: ConstansApp.info1Text1About,
                    text2: ConstansApp.info1Text2About,
                  ),
                  LineVertical(),
                  PlusNumber(
                    text: ConstansApp.info2NumberAbout,
                  ),
                  InfoPlusNumber(
                    text1: ConstansApp.info2Text1About,
                    text2: ConstansApp.info2Text2About,
                  ),
                  LineVertical(),
                  PlusNumber(
                    text: ConstansApp.info3NumberAbout,
                  ),
                  InfoPlusNumber(
                    text1: ConstansApp.info3Text1About,
                    text2: ConstansApp.info3Text2About,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class LineVertical extends StatelessWidget {
  const LineVertical({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6),
      child: Container(
        width: 2.0,
        height: 30,
        decoration: const BoxDecoration(
          color: ColorsApp.appGray2,
        ),
      ),
    );
  }
}

class InfoPlusNumber extends StatelessWidget {
  final String text1;
  final String text2;
  const InfoPlusNumber({
    super.key,
    required this.text1,
    required this.text2,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6).copyWith(right: 0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AutoSizeText(
            text1,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          AutoSizeText(
            text2,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ],
      ),
    );
  }
}

class PlusNumber extends StatelessWidget {
  final String text;
  const PlusNumber({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return AutoSizeText(
      text,
      style: const TextStyle(
        fontSize: 30,
        color: ColorsApp.colorRajah300,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
