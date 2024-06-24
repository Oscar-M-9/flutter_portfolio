import 'package:flutter/material.dart';
import 'package:flutter_app/locator.dart';
import 'package:flutter_app/web/router/route_name.dart';
import 'package:flutter_app/web/router/router.dart';
import 'package:flutter_app/web/services/navigation_service.dart';
import 'package:flutter_app/web/ui/layout/main_layout_page.dart';
import 'package:flutter_app/web/utils/colors_app.dart';
import 'package:flutter_app/web/utils/constants_app.dart';

void main() {
  setupLocator();
  Flurorouter.configureRoutes();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // Add MetaSEO just into Web platform condition
    // if (kIsWeb) {
    //   // Define MetaSEO object
    //   MetaSEO meta = MetaSEO();
    //   // add meta seo data for web app as you want
    //   meta.author(author: ConstansApp.author);
    //   meta.description(description: ConstansApp.description);
    //   meta.keywords(keywords: ConstansApp.keywords);

    //   // add meta seo open graph tags as you want
    //   meta.facebookAppID(facebookAppID: ConstansApp.facebookAppID);
    //   meta.ogTitle(ogTitle: ConstansApp.ogTitle);
    //   meta.ogDescription(ogDescription: ConstansApp.ogDescription);
    //   meta.ogImage(ogImage: AssetsApp.ogImage);

    //   // here you can add any tags does not exist in the package as this
    //   // meta.propertyContent(property: 'og:site_name', content: 'example');

    //   // or if you want to add twitter card meta tags just as the following
    //   meta.twitterCard(twitterCard: TwitterCard.summaryLargeImage);
    //   meta.twitterTitle(twitterTitle: ConstansApp.twitterTitle);
    //   meta.twitterDescription(
    //       twitterDescription: ConstansApp.twitterDescription);
    //   meta.twitterImage(twitterImage: AssetsApp.ogImage);

    //   // here you can add any tags does not exist in the package as this
    //   // meta.nameContent(name: 'twitter:site', content: '@mouaz_m_shahmeh');
    // }
    return MaterialApp(
      title: ConstansApp.author,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        primarySwatch: ColorsApp.primeColor,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        fontFamily: 'Poppins',
        textTheme: TextTheme(
          bodyLarge: TextStyle(
            fontFamily: 'Poppins',
            color: ColorsApp.appDark.withOpacity(.8),
            fontWeight: FontWeight.w500,
            height: 1,
          ),
          bodyMedium: const TextStyle(
            fontFamily: 'Poppins',
            fontSize: 13.0,
            fontWeight: FontWeight.w300,
            color: ColorsApp.appGray3,
          ),
          bodySmall: const TextStyle(
            fontFamily: 'Poppins',
            color: ColorsApp.appLight,
            fontSize: 10,
            fontWeight: FontWeight.w200,
            height: 1,
          ),
          headlineLarge: const TextStyle(
            fontFamily: 'Poppins',
          ),
          headlineMedium: const TextStyle(
            fontFamily: 'Poppins',
          ),
          headlineSmall: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 32.0,
            fontWeight: FontWeight.w600,
            color: ColorsApp.appDark.withOpacity(0.8),
          ),
          titleLarge: const TextStyle(
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w600,
          ),
          titleMedium: const TextStyle(
            fontFamily: 'Poppins',
          ),
          titleSmall: const TextStyle(fontFamily: 'Poppins'),
          labelLarge: const TextStyle(fontFamily: 'Poppins'),
          labelMedium: const TextStyle(fontFamily: 'Poppins'),
          labelSmall: const TextStyle(fontFamily: 'Poppins'),
          displayLarge: const TextStyle(fontFamily: 'Poppins'),
          displayMedium: const TextStyle(
            fontFamily: 'Poppins',
            fontSize: 42.0,
            fontWeight: FontWeight.bold,
          ),
          displaySmall: const TextStyle(fontFamily: 'Poppins'),
        ),
      ),
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
      initialRoute: RouteNameApp.home,
      // onGenerateRoute: RouteGenerator.generateRoute,
      onGenerateRoute: Flurorouter.router.generator,
      navigatorKey: locator<NavigationService>().navigatorKey,
      builder: (_, child) {
        return MainLayoutPage(
          child: child ?? const CircularProgressIndicator(),
        );
      },
    );
  }
}
