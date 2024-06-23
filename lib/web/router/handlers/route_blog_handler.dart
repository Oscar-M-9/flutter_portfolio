import 'package:fluro/fluro.dart';
import 'package:flutter_app/web/ui/views/blog/blog_view.dart';

final blogHandler = Handler(
  handlerFunc: (context, parameters) => const BlogWiew(),
);
