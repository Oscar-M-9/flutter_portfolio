// To parse this JSON data, do
//
//     final blogModel = blogModelFromJson(jsonString);

import 'dart:convert';

BlogModel blogModelFromJson(String str) => BlogModel.fromJson(json.decode(str));

String blogModelToJson(BlogModel data) => json.encode(data.toJson());

class BlogModel {
  final String? title;
  final String? description;
  final String? image;
  final DateTime date;
  final String? author;

  BlogModel({
    this.title,
    this.description,
    this.image,
    required this.date,
    this.author,
  });

  BlogModel copyWith({
    String? title,
    String? description,
    String? image,
    DateTime? date,
    String? author,
  }) =>
      BlogModel(
        title: title ?? this.title,
        description: description ?? this.description,
        image: image ?? this.image,
        date: date ?? this.date,
        author: author ?? this.author,
      );

  factory BlogModel.fromJson(Map<String, dynamic> json) => BlogModel(
        title: json["title"],
        description: json["description"],
        image: json["image"],
        date: json["date"],
        author: json["author"],
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "description": description,
        "image": image,
        "date": date,
        "author": author,
      };
}
