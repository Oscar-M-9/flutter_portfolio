import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_app/web/ui/shared/widgets/text_with_box_stack.dart';
import 'package:flutter_app/web/ui/views/footer/footer_view.dart';
import 'package:flutter_app/web/ui/views/projects/widgets/card_project_widget.dart';
import 'package:flutter_app/web/utils/assets_app.dart';
import 'package:flutter_app/web/utils/constants_app.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class ProjectView extends StatelessWidget {
  const ProjectView({super.key});

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
              text: 'CHECK PROJECTS',
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: FittedBox(
              child: AutoSizeText(
                "MY BEST PROJECTS",
                style: Theme.of(context)
                    .textTheme
                    .displayMedium
                    ?.copyWith(fontSize: 28),
              ),
            ),
          ),
          ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 1200,
            ),
            child: LayoutBuilder(builder: (context, constraints) {
              const double minWidth = 600;
              return Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 10,
                ),
                child: StaggeredGrid.count(
                  crossAxisCount: 6,
                  mainAxisSpacing: 4,
                  crossAxisSpacing: 4,
                  children: ConstansApp.projects.map((item) {
                    return StaggeredGridTile.count(
                      crossAxisCellCount: item.crossAxisCell == 2
                          ? constraints.maxWidth < minWidth
                              ? 3
                              : 2
                          : 3,
                      mainAxisCellCount: item.mainAxisCell ?? 2,
                      child: CardProjectWidget(
                        image:
                            AssetImage(item.image ?? AssetsApp.projectDefault),
                        title: item.title ?? "Título del Proyecto",
                        subTitle: item.subtitle ?? "Subtítulo del proyecto",
                        constraints: constraints,
                      ).animate().scale(),
                    );
                  }).toList(),
                ),
              );
            }),
          ),
          const FooterView(),
        ],
      ),
    );
  }
}
