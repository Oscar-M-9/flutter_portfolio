import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/web/ui/shared/widgets/glass_morphism.dart';
import 'package:flutter_app/web/utils/colors_app.dart';

class CardProjectWidget extends StatelessWidget {
  final ImageProvider<Object> image;
  final String title;
  final String subTitle;
  final BoxConstraints constraints;
  final double minWidth;
  const CardProjectWidget({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
    required this.constraints,
    this.minWidth = 600,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(constraints.maxWidth < minWidth ? 1.0 : 8.0),
      child: ClipRRect(
        borderRadius:
            BorderRadius.circular(constraints.maxWidth < minWidth ? 10 : 20),
        child: Stack(
          children: [
            Positioned(
              bottom: 0,
              right: 0,
              left: 0,
              top: 0,
              child: Image(
                image: image,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              top: 0,
              bottom: 0,
              right: 0,
              left: 0,
              child: GlassMorphism(
                blur: 0,
                opacity: 0.15,
                color: ColorsApp.appDark,
                child: Container(),
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              left: 0,
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(
                      constraints.maxWidth < minWidth ? 10 : 20),
                  bottomRight: Radius.circular(
                      constraints.maxWidth < minWidth ? 10 : 20),
                ),
                child: GlassMorphism(
                  blur: 3,
                  opacity: 0.2,
                  color: ColorsApp.appDark,
                  child: SizedBox(
                    height: constraints.maxWidth < minWidth ? 40 : 80,
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: constraints.maxWidth < minWidth ? 8 : 20,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Flexible(
                            child: AutoSizeText(
                              title,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall
                                  ?.copyWith(
                                    fontSize: constraints.maxWidth < minWidth
                                        ? 10
                                        : 14,
                                  ),
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Visibility(
                            visible:
                                constraints.maxWidth < minWidth ? false : true,
                            child: Flexible(
                              child: AutoSizeText(
                                subTitle,
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall
                                    ?.copyWith(
                                      fontSize: constraints.maxWidth < minWidth
                                          ? 8
                                          : 10,
                                    ),
                              ),
                            ),
                          ),
                        ],
                      ),
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
