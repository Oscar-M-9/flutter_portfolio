import 'package:fluro/fluro.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_app/web/ui/views/projects/project_description_view.dart';
import 'package:flutter_app/web/ui/views/projects/project_view.dart';

final projectsHandler = Handler(
  handlerFunc: (context, parameters) => const ProjectView(),
);
final projectsDescritionHandler = Handler(
  handlerFunc: (context, parameters) {
    if (kDebugMode) {
      print(parameters);
    }
    int nProject = 0;
    if (int.tryParse(parameters['project']!.first) != null) {
      nProject = int.parse(parameters['project']!.first);
    }
    return ProjectDescriptionView(
      project: nProject,
    );
  },
);
