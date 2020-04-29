import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uuid/uuid.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static const String _title = 'Einkaufsliste';
  // Main app class
  @override
  Widget build(BuildContext context) {
    // Build method is called on start
    return MaterialApp(
        // Returns app with material design
        title: _title,
        theme: ThemeData(
          // Set theme for app
          primarySwatch: // Swatch for color palette for material design
              Colors.blueGrey,
          textTheme: GoogleFonts.robotoTextTheme(
            Theme.of(context).textTheme,
          ),
        ),
        home: Scaffold(
            // App Content
            appBar: AppBar(
              // Title bar
              centerTitle: true, // Center title text
              title: const Text(_title), // Title text
            ),
            body: Center(
              child: Liste(),
            )));
  }
}

class Liste extends StatefulWidget {
  @override
  ListeState createState() => ListeState();
}

class ListeState extends State<Liste> {
  @override
  Widget build(BuildContext context) {
    final liste = {
      1: "Nudeln",
      2: "Pesto",
    };
    return Text(liste[1]);
  }
}
