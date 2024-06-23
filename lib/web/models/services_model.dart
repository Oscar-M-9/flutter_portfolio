// To parse this JSON data, do
//
//     final services = servicesFromJson(jsonString);

import 'dart:convert';

ServicesModel servicesFromJson(String str) =>
    ServicesModel.fromJson(json.decode(str));

String servicesToJson(ServicesModel data) => json.encode(data.toJson());

class ServicesModel {
  final String? title;
  final String? description;
  final String? image;
  final int? delay;

  ServicesModel({
    this.title,
    this.description,
    this.image,
    this.delay,
  });

  ServicesModel copyWith({
    String? title,
    String? description,
    String? image,
    int? delay,
  }) =>
      ServicesModel(
        title: title ?? this.title,
        description: description ?? this.description,
        image: image ?? this.image,
        delay: delay ?? this.delay,
      );

  factory ServicesModel.fromJson(Map<String, dynamic> json) => ServicesModel(
        title: json["title"],
        description: json["description"],
        image: json["image"],
        delay: json["delay"],
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "description": description,
        "image": image,
        "delay": delay,
      };
}
