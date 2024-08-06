import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:html/parser.dart' as parser;
import 'package:html/dom.dart' as dom;

class SLRTCEPage extends StatefulWidget {
  @override
  State<SLRTCEPage> createState() => _SLRTCEPageState();
}

class _SLRTCEPageState extends State<SLRTCEPage> {
  // ignore: unused_field
  String _pageTitle = 'SLRTCE Information';
  List<String> _paragraphs = [];

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  Future<void> fetchData() async {
    final response = await http.get(Uri.parse('http://slrtce.in'));
    if (response.statusCode == 200) {
      dom.Document document = parser.parse(response.body);
      setState(() {
        // Extract and set the content you want to display
        _pageTitle = document.querySelector('title')!.text;
        _paragraphs =
            document.querySelectorAll('p').map((p) => p.text).toList();
      });
    } else {
      setState(() {
        _pageTitle = 'Failed to load data';
        _paragraphs = [];
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SLRTCE'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Placeholder for logo image
            Image.asset(
              'lib/images/slrtce.jpg',
              height: 100,
              width: 100,
            ),
            SizedBox(height: 20),
            // Display paragraphs
            for (String paragraph in _paragraphs)
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                child: Text(
                  paragraph,
                  style: TextStyle(fontSize: 16),
                ),
              ),
            // Placeholder for other images
            Image.asset(
              'lib/images/slrtce_clg.png',
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: SLRTCEPage(),
  ));
}
