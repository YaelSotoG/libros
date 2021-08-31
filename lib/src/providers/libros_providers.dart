import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:libros/src/models/categoria_model.dart';

class LibrosProvider {
  String _url = 'www.etnassoft.com';

  Future<List<Categoria>> getCategorias() async {
    final url = Uri.https(_url, '/api/v1/get', {
      'get_categories': 'all',
    });
    final resp = await http.get(url);
    final decodeddata = json.decode(resp.body);
    final categorias = Categorias.fromJsonList(decodeddata);
    // print(categorias.items);
    return categorias.items;
  }
}
