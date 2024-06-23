import 'package:fluro/fluro.dart';
import 'package:flutter_app/web/ui/views/home/home_view.dart';

final homeHandler = Handler(
  handlerFunc: (context, parameters) => const HomeView(),
);
