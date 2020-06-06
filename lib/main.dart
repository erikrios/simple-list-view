import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      title: 'Simple List View',
      home: HomeApp(),
    ));

class HomeApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text('Simple List View'),
    ),
  );
}
