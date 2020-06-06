import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      title: 'Simple List View',
      home: HomeApp(),
    ));

class HomeApp extends StatelessWidget {
  
  final List<int> dummyTexts = List<int>.generate(1000, (index) => index + 1);

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
                SnackBar snackBar = SnackBar(
                  content: Text('You clicked on ${dummyTexts[index]}'),
                  action: SnackBarAction(
                      label: 'Undo',
                      onPressed: () {
                        print('Undo the action for item ${dummyTexts[index]}');
                      }),
                );
                Scaffold.of(context).showSnackBar(snackBar);
              },
              contentPadding: EdgeInsets.all(8.0),
            );
          },
          itemCount: dummyTexts.length,
          padding: EdgeInsets.only(right: 16.0, left: 16.0),
        ),
      );
}
