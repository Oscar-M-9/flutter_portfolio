import 'package:fluro/fluro.dart';
import 'package:flutter_app/web/ui/views/contact/contact_view.dart';

final contactHandler = Handler(
  handlerFunc: (context, parameters) => const ContactView(),
);
