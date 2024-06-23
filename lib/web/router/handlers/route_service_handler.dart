import 'package:fluro/fluro.dart';
import 'package:flutter_app/web/ui/views/service/service_view.dart';

final serviceHandler = Handler(
  handlerFunc: (context, parameters) => const ServiceView(),
);
