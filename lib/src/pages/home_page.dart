import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatelessWidget {
  // const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar(),
      body: crearlista(),
    );
  }
}

Widget appbar() {
  return AppBar(
    backgroundColor: Colors.amber,
    actions: [
      IconButton(onPressed: () {}, icon: FaIcon(FontAwesomeIcons.search))
    ],
  );
}

Widget crearlista() {
  return ListView.builder(itemBuilder: (BuildContext context, int index) {
    return ListTile(
      title: Text(''),
    );
  });
}
