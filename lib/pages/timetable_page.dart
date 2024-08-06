import 'package:flutter/material.dart';

class TimetablePage extends StatelessWidget {
  // ignore: avoid_types_as_parameter_names, non_constant_identifier_names
  const TimetablePage({super.key, Key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Timetable"),
      ),
      body: Center(
        child: Container(
          child: Table(
            border: TableBorder.all(),
            defaultColumnWidth: const FixedColumnWidth(50.0),
            children: const <TableRow>[
              TableRow(
                children: <Widget>[
                  TableCell(
                    child: Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text('Mon'),
                    ),
                  ),
                  TableCell(
                    child: Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Text(
                        '-',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  TableCell(
                    child: Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text('Lab'),
                    ),
                  ),
                  TableCell(
                    child: Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text('Lab'),
                    ),
                  ),
                  TableCell(
                    child: Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Text('DWM'),
                    ),
                  ),
                  TableCell(
                    child: Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Text('Soft Skill'),
                    ),
                  ),
                  TableCell(
                    child: Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Text('Honor'),
                    ),
                  ),
                  TableCell(
                    child: Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Text('Honor'),
                    ),
                  ),
                ],
              ),
              TableRow(
                children: <Widget>[
                  TableCell(
                    child: Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text('Tue'),
                    ),
                  ),
                  TableCell(
                    child: Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Text(
                        '-',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  TableCell(
                    child: Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Text('AI'),
                    ),
                  ),
                  TableCell(
                    child: Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Text('ESRTOS'),
                    ),
                  ),
                  TableCell(
                    child: Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Text('Lab'),
                    ),
                  ),
                  TableCell(
                    child: Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Text('Lab'),
                    ),
                  ),
                  TableCell(
                    child: Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Text('DWM'),
                    ),
                  ),
                  TableCell(
                    child: Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Text('CN'),
                    ),
                  ),
                ],
              ),
              TableRow(
                children: <Widget>[
                  TableCell(
                    child: Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text('Wed'),
                    ),
                  ),
                  TableCell(
                    child: Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Text(
                        '-',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  TableCell(
                    child: Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Text('ML'),
                    ),
                  ),
                  TableCell(
                    child: Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Text('ESRTOS'),
                    ),
                  ),
                  TableCell(
                    child: Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Text('Lab'),
                    ),
                  ),
                  TableCell(
                    child: Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Text('Lab'),
                    ),
                  ),
                  TableCell(
                    child: Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Text('Lib'),
                    ),
                  ),
                  TableCell(
                    child: Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Text('MP 2B'),
                    ),
                  ),
                ],
              ),
              TableRow(
                children: <Widget>[
                  TableCell(
                    child: Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text('Thur'),
                    ),
                  ),
                  TableCell(
                    child: Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Text('CN'),
                    ),
                  ),
                  TableCell(
                    child: Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Text('Lab'),
                    ),
                  ),
                  TableCell(
                    child: Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Text('Lab'),
                    ),
                  ),
                  TableCell(
                    child: Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Text('AI'),
                    ),
                  ),
                  TableCell(
                    child: Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Text('DWM'),
                    ),
                  ),
                  TableCell(
                    child: Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Text('ML'),
                    ),
                  ),
                  TableCell(
                    child: Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Text('ML'),
                    ),
                  ),
                ],
              ),
              TableRow(
                children: <Widget>[
                  TableCell(
                    child: Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text('Fri'),
                    ),
                  ),
                  TableCell(
                    child: Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Text('CN'),
                    ),
                  ),
                  TableCell(
                    child: Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Text('AI'),
                    ),
                  ),
                  TableCell(
                    child: Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Text('ESRTOS'),
                    ),
                  ),
                  TableCell(
                    child: Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Text('Lab'),
                    ),
                  ),
                  TableCell(
                    child: Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Text('Lab'),
                    ),
                  ),
                  TableCell(
                    child: Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Text('Honor'),
                    ),
                  ),
                  TableCell(
                    child: Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Text('Honor'),
                    ),
                  ),
                ],
              ),
              // Add more TableRows as needed with different content for each cell
            ],
          ),
        ),
      ),
    );
  }
}
