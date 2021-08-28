// To parse this JSON data, do
//
//     final categorias = categoriasFromMap(jsonString);

import 'dart:convert';

class Categorias {
  Categorias({
    this.categoryId,
    this.name,
    this.nicename,
  });

  int categoryId;
  String name;
  String nicename;

  factory Categorias.fromJson(String str) =>
      Categorias.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Categorias.fromMap(Map<String, dynamic> json) => Categorias(
        categoryId: json["category_id"] == null ? null : json["category_id"],
        name: json["name"] == null ? null : json["name"],
        nicename: json["nicename"] == null ? null : json["nicename"],
      );

  Map<String, dynamic> toMap() => {
        "category_id": categoryId == null ? null : categoryId,
        "name": name == null ? null : name,
        "nicename": nicename == null ? null : nicename,
      };
}
