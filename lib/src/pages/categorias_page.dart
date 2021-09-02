import 'package:flutter/material.dart';
import 'package:libros/src/models/libro_model.dart';

import 'home_page.dart';
// import 'package:libros/src/models/libro_model.dart';
// import 'package:libros/src/providers/libros_providers.dart';

// final a = LibrosProvider();
// Future<List<Libro>> items=a.getLibros(id);

class CategoriaPage extends StatelessWidget {
  final String id; //constructor
  const CategoriaPage(this.id, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
          future: libro.getLibros(id),
          builder: (BuildContext context, AsyncSnapshot<List<Libro>> snapshot) {
            if (snapshot.hasData) {
              return GridView.builder(
                  //crea la lista de imagenes
                  itemCount: snapshot.data.length, //cuenta cuantos libros son
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10.0,
                    mainAxisSpacing: 10.0,
                    mainAxisExtent: 200.0, //para que tanta altura usa
                    // childAspectRatio:1.5//que tanta altura usa pero mas grande
                  ), //hace que sea una lista de 2
                  itemBuilder: (BuildContext contex, int index) {
                    return Container(
                      color: Colors.blue,
                      child: Column(
                        children: [
                          Expanded(
                            child: TextButton(
                              onPressed: () {
                                print('tap');
                              },
                              child: FadeInImage.assetNetwork(
                                  placeholder: 'assets/img/loading.gif',
                                  image: snapshot.data[index].thumbnail),
                            ),
                          ),
                          Text(snapshot.data[index].title),
                        ],
                      ),
                    );
                  });
            } else {
              return Center(child: CircularProgressIndicator());
            }
          }),
    );
  }
}
