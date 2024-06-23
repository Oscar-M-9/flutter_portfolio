import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_app/web/models/blog_model.dart';
import 'package:flutter_app/web/ui/shared/widgets/glass_morphism.dart';
import 'package:flutter_app/web/ui/shared/widgets/max_width.dart';
import 'package:flutter_app/web/ui/shared/widgets/text_with_box_stack.dart';
import 'package:flutter_app/web/ui/views/blog/widgets/card_blog_widget.dart';
import 'package:flutter_app/web/ui/views/footer/footer_view.dart';
import 'package:flutter_app/web/utils/assets_app.dart';
import 'package:flutter_app/web/utils/colors_app.dart';
import 'package:flutter_app/web/utils/constants_app.dart';

class BlogWiew extends StatelessWidget {
  const BlogWiew({super.key});

  @override
  Widget build(BuildContext context) {
    ConstansApp.blogs.sort((a, b) => b.date.compareTo(a.date));

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
              text: 'LASTEST BLOG',
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: FittedBox(
              child: AutoSizeText(
                "MY LASTEST NEWS",
                style: Theme.of(context)
                    .textTheme
                    .displayMedium
                    ?.copyWith(fontSize: 28),
              ),
            ),
          ),
          MaxWidth(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 30,
                horizontal: 10,
              ),
              child: Wrap(
                spacing: 15,
                runSpacing: 12,
                children: ConstansApp.blogs.map((item) {
                  return CardBlogWidget(
                    image: Image.asset(
                      item.image ?? AssetsApp.projectDefault,
                      fit: BoxFit.cover,
                    ),
                    date: item.date,
                    title: item.title ?? "Titulo de la noticia",
                    description:
                        item.description ?? "Descripción de la noticia",
                    author: item.author ?? "Anonymous",
                    onTap: () => _showModalBottomSheet(context, item),
                  ).animate().shimmer(
                        delay: const Duration(
                          milliseconds: 350,
                        ),
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

  void _showModalBottomSheet(BuildContext context, BlogModel blog) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Stack(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20)
                  .copyWith(top: 40),
              height: MediaQuery.of(context).size.height * 0.7,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15.0),
                  topRight: Radius.circular(15.0),
                ),
              ),
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      _ImageBlogModal(blog),
                      const SizedBox(
                        height: 20,
                      ),
                      AutoSizeText(
                        blog.title ?? "Titulo del Blog",
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                      const SizedBox(height: 20),
                      AutoSizeText(
                        blog.description ?? "Descripcion del Blog",
                        style:
                            Theme.of(context).textTheme.bodyLarge?.copyWith(),
                        // style: TextStyle(fontSize: 16),
                        textAlign: TextAlign.justify,
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: 2,
              right: 2,
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.close_rounded,
                  color: ColorsApp.appDark,
                ),
              ),
            ),
            Positioned(
              top: 15,
              right: 0,
              left: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GlassMorphism(
                    blur: 3,
                    opacity: 1,
                    color: ColorsApp.appGray,
                    borderRadius: BorderRadius.circular(5),
                    child: const SizedBox(
                      height: 6,
                      width: 80,
                    ),
                  ),
                ],
              ),
            )
          ],
        );
      },
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
    );
  }
}

class _ImageBlogModal extends StatelessWidget {
  final BlogModel blog;
  const _ImageBlogModal(this.blog);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: SizedBox(
        height: 280,
        width: double.infinity,
        child: Stack(
          children: [
            Positioned(
              top: 0,
              bottom: 0,
              right: 0,
              left: 0,
              child: Image.asset(
                blog.image ?? AssetsApp.projectDefault,
                fit: BoxFit.cover,
              ),
            ),
            const GlassMorphism(
              blur: 0,
              opacity: .05,
              color: ColorsApp.appDark,
              child: SizedBox(
                height: double.infinity,
                width: double.infinity,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
