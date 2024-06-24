import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/web/services/menu_service.dart';
import 'package:flutter_app/web/ui/shared/custom_app_menu.dart';
import 'package:flutter_app/web/ui/shared/widgets/mobile_menu.dart';
import 'package:flutter_app/web/utils/constants_app.dart';
import 'package:meta_seo/meta_seo.dart';
import 'package:provider/provider.dart';

class MainLayoutPage extends StatelessWidget {
  final Widget child;

  const MainLayoutPage({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    // Add MetaSEO just into Web platform condition
    if (kIsWeb) {
      // Define MetaSEO object
      MetaSEO meta = MetaSEO();
      // add meta seo data for web app as you want
      meta.author(author: ConstansApp.author);
      meta.description(description: ConstansApp.description);
      meta.keywords(keywords: ConstansApp.keywords);

      // add meta seo open graph tags as you want
      meta.facebookAppID(facebookAppID: ConstansApp.facebookAppID);
      meta.ogTitle(ogTitle: ConstansApp.ogTitle);
      meta.ogDescription(ogDescription: ConstansApp.ogDescription);
      meta.ogImage(ogImage: ConstansApp.ogImage);

      // here you can add any tags does not exist in the package as this
      // meta.propertyContent(property: 'og:site_name', content: 'example');

      // or if you want to add twitter card meta tags just as the following
      meta.twitterCard(twitterCard: TwitterCard.summaryLargeImage);
      meta.twitterTitle(twitterTitle: ConstansApp.twitterTitle);
      meta.twitterDescription(
          twitterDescription: ConstansApp.twitterDescription);
      // meta.twitterImage(twitterImage: ConstansApp.twitterImage);

      // here you can add any tags does not exist in the package as this
      // meta.nameContent(name: 'twitter:site', content: '@mouaz_m_shahmeh');
    }
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
