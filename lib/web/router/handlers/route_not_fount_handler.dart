import 'package:fluro/fluro.dart';
import 'package:flutter_app/web/ui/views/error/error_404_view.dart';

final pageNotFountHandler = Handler(
  handlerFunc: (_, __) => const Error404View(),
);
