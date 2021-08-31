// To parse this JSON data, do
//
//     final categorias = categoriasFromMap(jsonString);

// import 'dart:convert';

class Categorias {
  List<Categoria> items = [];

  Categorias();
  Categorias.fromJsonList(List<dynamic> jsonlist) {
    for (var item in jsonlist) {
      final categoria = new Categoria.fromJson(item);
      items.add(categoria);
    }
  }
} // To parse this JSON data, do
//

class Categoria {
  Categoria({
    this.categoryId,
    this.name,
    this.nicename,
  });

  int categoryId;
  String name;
  String nicename;

  factory Categoria.fromJson(Map<String, dynamic> json) => Categoria(
        categoryId: json["category_id"] == null ? null : json["category_id"],
        name: json["name"] == null ? null : json["name"],
        nicename: json["nicename"] == null ? null : json["nicename"],
      );

  Map<String, dynamic> toJson() => {
        "category_id": categoryId == null ? null : categoryId,
        "name": name == null ? null : name,
        "nicename": nicename == null ? null : nicename,
      };
}
