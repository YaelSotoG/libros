import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:libros/src/models/categoria_model.dart';
import 'package:libros/src/providers/libros_providers.dart';

final libro = new LibrosProvider();
// Future<List<Categoria>> categoria = libro.getCategorias();

class HomePage extends StatelessWidget {
  // const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar(),
      body: crearlista(),
    );
  }

  Widget appbar() {
    print(libro.getCategorias());
    return AppBar(
      backgroundColor: Colors.amber,
      actions: [
        IconButton(onPressed: () {}, icon: FaIcon(FontAwesomeIcons.search))
      ],
    );
  }

// Widget crearbotones() {
//   return Table(
//     children: [
//       // FutureBuilder(builder: builder),
//     ],
//   );
// }

  Widget crearlista() {
    // print(categoria);
    // for (var i in categoria) {}
    return FutureBuilder(
      future: libro.getCategorias(),
      builder: (BuildContext context, AsyncSnapshot<List<Categoria>> snapshot) {
        if (snapshot.hasData == true) {
          return ListView.builder(
              itemCount: snapshot.data.length,
              // itemCount: categoria.length,
              itemBuilder: (BuildContext context, int index) {
                print(snapshot.data[index].name);
                return ListTile(
                  title: Text(snapshot.data[index].name),
                );
              });
        } else {
          return Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
