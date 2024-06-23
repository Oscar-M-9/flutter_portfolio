import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_app/web/ui/shared/widgets/glass_morphism.dart';
import 'package:flutter_app/web/utils/colors_app.dart';
import 'package:intl/intl.dart';

class CardBlogWidget extends StatefulWidget {
  final Widget image;
  final String title;
  final String description;
  final DateTime date;
  final String author;
  final void Function() onTap;
  const CardBlogWidget({
    super.key,
    required this.image,
    required this.title,
    required this.description,
    required this.onTap,
    required this.date,
    required this.author,
  });

  @override
  State<CardBlogWidget> createState() => _CardBlogWidgetState();
}

class _CardBlogWidgetState extends State<CardBlogWidget> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    String formattedDate = DateFormat('dd MMM, yyyy').format(widget.date);

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
      child: GestureDetector(
        onTap: widget.onTap,
        child: Animate(
          effects: _isHovered
              ? [
                  BoxShadowEffect(
                    duration: const Duration(
                      milliseconds: 300,
                    ),
                    begin: const BoxShadow(
                      blurRadius: 30,
                      color: ColorsApp.colorRajah100,
                    ),
                    end: const BoxShadow(
                      blurRadius: 30,
                      color: ColorsApp.colorRajah200,
                    ),
                    borderRadius: BorderRadius.circular(15),
                    curve: Curves.easeIn,
                  ),
                  const ShimmerEffect(),
                ]
              : [],
          child: Container(
            width: 280,
            height: 370,
            decoration: BoxDecoration(
              color: _isHovered ? ColorsApp.colorRajah50 : ColorsApp.appLight2,
              borderRadius: BorderRadius.circular(15),
              border: Border.all(
                width: 4,
                color: _isHovered ? ColorsApp.appYellow : ColorsApp.appGray,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _ImageBlog(widget: widget),
                _PublishBlog(formattedDate: formattedDate, widget: widget),
                _TitleBlog(widget: widget),
                _DescriptionBlog(widget: widget),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _PublishBlog extends StatelessWidget {
  const _PublishBlog({
    required this.formattedDate,
    required this.widget,
  });

  final String formattedDate;
  final CardBlogWidget widget;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 20,
      ),
      child: AutoSizeText(
        "$formattedDate por ${widget.author}",
        style: Theme.of(context).textTheme.bodyMedium,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}

class _ImageBlog extends StatelessWidget {
  const _ImageBlog({
    required this.widget,
  });

  final CardBlogWidget widget;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: SizedBox(
        height: 180,
        width: double.infinity,
        child: Stack(
          children: [
            Positioned(
              top: 0,
              bottom: 0,
              right: 0,
              left: 0,
              child: widget.image,
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

class _TitleBlog extends StatelessWidget {
  const _TitleBlog({
    required this.widget,
  });

  final CardBlogWidget widget;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 20,
      ),
      child: AutoSizeText(
        widget.title,
        style: Theme.of(context).textTheme.titleSmall?.copyWith(
              fontWeight: FontWeight.w600,
            ),
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}

class _DescriptionBlog extends StatelessWidget {
  const _DescriptionBlog({
    required this.widget,
  });

  final CardBlogWidget widget;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Text(
        widget.description,
        style: Theme.of(context).textTheme.bodyMedium,
        maxLines: 3,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}
