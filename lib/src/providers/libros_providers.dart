import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:libros/src/models/categoria_model.dart';
import 'package:libros/src/models/libro_model.dart';

class LibrosProvider {
  String _url = 'www.etnassoft.com';
  String _data = '/api/v1/get';

  Future<List<Categoria>> getCategorias() async {
    final url = Uri.https(_url, _data, {
      'get_categories': 'all',
    });
    final resp = await http.get(url);
    final decodeddata = json.decode(resp.body);
    final categorias = Categorias.fromJsonList(decodeddata);
    // print(categorias.items);
    return categorias.items;
  }

  Future<List<Libro>> getLibros(String id) async {
    final url = Uri.https(_url, _data, {
      'category_id': id,
    });
    final resp = await http.get(url);
    final decodeddata = json.decode(resp.body);
    final libros = Libros.fromJson(decodeddata);
    print(libros.items.first.title);
    return libros.items;
  }
}
