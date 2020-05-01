import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<MyApp> {
  final items = [];

  TextEditingController _itemController = TextEditingController();

  _addItem() {
    setState(() {
      items.add(_itemController.text);
      _itemController.text = "";
      FocusScope.of(context).unfocus();
    });
  }

  @override
  void dispose() {
    _itemController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.shopping_cart),
          title: Text("Einkaufsliste"),
          centerTitle: true,
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
                    trailing: IconButton(
                      icon: Icon(Icons.check),
                      onPressed: () {
                        setState(() {
                          items.removeAt(index);
                        });
                      },
                    ),
                  );
                },
                separatorBuilder: (context, index) =>
                    Divider(height: 8.0, color: Colors.blueGrey),
              ),
            ),
            Container(
              margin: EdgeInsets.all(16.0),
              child: Row(
                children: <Widget>[
                  Flexible(
                    child: TextField(
                      controller: _itemController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "Hinzufügen...",
                        suffixIcon: IconButton(
                          icon: Icon(Icons.add),
                          onPressed: _addItem,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  } // build()
} // MyApp
