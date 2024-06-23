import 'package:flutter/material.dart';

class ProjectDescriptionView extends StatelessWidget {
  final int project;
  const ProjectDescriptionView({
    super.key,
    required this.project,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Project N° $project"),
    );
  }
}
