import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Timetable Example',
      home: TimetablePage(),
    );
  }
}

class TimetablePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Timetable'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Timetable Heading',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Table(
                border: TableBorder.all(),
                children: _buildTimetable(),
              ),
            ),
          ),
        ],
      ),
    );
  }

  List<TableRow> _buildTimetable() {
    List<TableRow> rows = [];

    // Header row
    rows.add(
      TableRow(
        children: List.generate(
          9,
          (index) => Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(8.0),
            color: Colors.grey[300],
            child: Text(
              'Header $index',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );

    // Data rows
    for (int i = 0; i < 6; i++) {
      rows.add(
        TableRow(
          children: List.generate(
            9,
            (index) => Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(8.0),
              color: i % 2 == 0 ? Colors.grey[200] : Colors.white,
              child: Text('Data $i-$index'),
            ),
          ),
        ),
      );
    }

    return rows;
  }
}
