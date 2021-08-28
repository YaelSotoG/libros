import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:libros/src/models/categoria_model.dart';

class AstrosProvider {
  String _url = 'www.etnassoft.com';

  Future<Categorias> getCategorias() async {
    final url = Uri.https(_url, '/api/v1/get', {
      'get_categories': 'all',
    });
    final resp = await http.get(url);
    final decodeddata = json.decode(resp.body);
    final categorias = new Categorias.fromJson(decodeddata);
    print(categorias);
    return categorias;
  }
}
