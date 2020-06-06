import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      title: 'Simple List View',
      home: HomeApp(),
    ));

class HomeApp extends StatelessWidget {
  List<int> dummyTexts = List<int>.generate(1000, (index) => index + 1);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('Simple List View'),
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return ListTile(
              title: Text("Title ${dummyTexts[index]}"),
              subtitle: Text("Subtitle for ${dummyTexts[index]}"),
              leading: Icon(
                  (index % 2 == 0) ? Icons.airport_shuttle : Icons.android),
              onTap: () {
                print('Clicked on ${dummyTexts[index]}');
              },
            );
          },
          itemCount: dummyTexts.length,
          padding: EdgeInsets.all(16.0),
        ),
      );
}
