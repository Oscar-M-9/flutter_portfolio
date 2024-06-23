// To parse this JSON data, do
//
//     final projectModel = projectModelFromJson(jsonString);

import 'dart:convert';

ProjectModel projectModelFromJson(String str) =>
    ProjectModel.fromJson(json.decode(str));

String projectModelToJson(ProjectModel data) => json.encode(data.toJson());

class ProjectModel {
  final String? title;
  final String? subtitle;
  final String? image;
  final int? crossAxisCell;
  final int? mainAxisCell;

  ProjectModel({
    this.title,
    this.subtitle,
    this.image,
    this.crossAxisCell,
    this.mainAxisCell,
  });

  ProjectModel copyWith({
    String? title,
    String? subtitle,
    String? image,
    int? crossAxisCell,
    int? mainAxisCell,
  }) =>
      ProjectModel(
        title: title ?? this.title,
        subtitle: subtitle ?? this.subtitle,
        image: image ?? this.image,
        crossAxisCell: crossAxisCell ?? this.crossAxisCell,
        mainAxisCell: mainAxisCell ?? this.mainAxisCell,
      );

  factory ProjectModel.fromJson(Map<String, dynamic> json) => ProjectModel(
        title: json["title"],
        subtitle: json["subtitle"],
        image: json["image"],
        crossAxisCell: json["crossAxisCell"],
        mainAxisCell: json["mainAxisCell"],
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "subtitle": subtitle,
        "image": image,
        "crossAxisCell": crossAxisCell,
        "mainAxisCell": mainAxisCell,
      };
}
