import 'package:fluro/fluro.dart';
import 'package:flutter_app/web/router/route_name.dart';

import 'handlers/export_handlers.dart';

class Flurorouter {
  static final FluroRouter router = FluroRouter();

  static void configureRoutes() {
    router.define(
      RouteNameApp.home,
      handler: homeHandler,
      transitionType: TransitionType.fadeIn,
    );
    router.define(
      RouteNameApp.projects,
      handler: projectsHandler,
      transitionType: TransitionType.fadeIn,
    );
    router.define(
      RouteNameApp.service,
      handler: serviceHandler,
      transitionType: TransitionType.fadeIn,
    );
    router.define(
      '${RouteNameApp.projects}/:project',
      handler: projectsDescritionHandler,
      transitionType: TransitionType.fadeIn,
    );
    router.define(
      RouteNameApp.blog,
      handler: blogHandler,
      transitionType: TransitionType.fadeIn,
    );
    router.define(
      RouteNameApp.contact,
      handler: contactHandler,
      transitionType: TransitionType.fadeIn,
    );

    // 404 - Not Page Fount
    router.notFoundHandler = pageNotFountHandler;
  }
}
