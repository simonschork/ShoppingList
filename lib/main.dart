import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<String> items = [
      "Pasta",
      "Kräuter",
      "Zwiebeln",
      "Essig",
      "Spices",
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Einkaufsliste"),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              child: new ListView.separated(
                padding: const EdgeInsets.all(16.0),
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text('${items[index]}'),
                    trailing: Icon(Icons.check),
                  );
                },
                separatorBuilder: (context, index) =>
                    Divider(height: 8.0, color: Colors.blueGrey),
              ),
            ),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Hinzufügen...',
              ),
              autofocus: false,
            ),
          ],
        ),
      ),
    );
  }
}
