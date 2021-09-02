import 'package:flutter/material.dart';
import 'package:flutter_plugin_pdf_viewer/flutter_plugin_pdf_viewer.dart';

class LectorPage extends StatefulWidget {
  final String link;
  LectorPage(this.link);

  @override
  _LectorPageState createState() => _LectorPageState();
}

class _LectorPageState extends State<LectorPage> {
  // String url;
  String url = "http://www.pdf995.com/samples/pdf.pdf";
  // String pdfasset = "assets/sample.pdf";
  PDFDocument _doc;
  bool _loading;

  @override
  void initState() {
    super.initState();
    final cambio = widget.link.replaceAll(
        'https://openlibra.com/book', 'https://openlibra.com/es/book/download');
    print(cambio);
    // url = cambio;
    _initPdf();
  }

  _initPdf() async {
    setState(() {
      _loading = true;
    });
    final doc = await PDFDocument.fromURL(url);
    setState(() {
      _doc = doc;
      _loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter PDF Demo"),
      ),
      body: _loading
          ? Center(
              child: CircularProgressIndicator(),
            )
          : PDFViewer(
              document: _doc,
              indicatorBackground: Colors.red,
              // showIndicator: false,
              // showPicker: false,
            ),
    );
  }
}
