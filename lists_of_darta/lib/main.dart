import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: QuoteList(),
    ));

class QuoteList extends StatefulWidget {
  const QuoteList({Key? key}) : super(key: key);

  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<String> quotes = [
    "Every second counts, spend them wisely",
    "The truth is rarely pure and never simple",
    "Take 6 months for yourself to change the rest of yourself"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[200],
      appBar: AppBar(
        title: Text("Awsome Quotes"),
        centerTitle: true,
        backgroundColor: Colors.teal[900],
      ),
      body: Column(
        children: quotes.map((quote) {
          return Center(
            child: (Container(
              padding: EdgeInsets.all(20.0),
              color: Colors.indigoAccent[700],
              width: 350.0,
              margin: EdgeInsets.all(10.0),
              child: Center(
                child: Text(
                  quote,
                  style: TextStyle(
                    color: Colors.deepOrange[600],
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.0,
                  ),
                ),
              ),
            )),
          );
        }).toList(),
      ),
    );
  }
}
