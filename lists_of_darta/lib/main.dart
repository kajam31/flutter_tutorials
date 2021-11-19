import 'package:flutter/material.dart';
import "quote.dart";

void main() => runApp(MaterialApp(
      home: QuoteList(),
    ));

class QuoteList extends StatefulWidget {
  const QuoteList({Key? key}) : super(key: key);

  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote(author: "me", text: "Every second counts, spend them wisely"),
    Quote(
        author: "Oscar Wilde",
        text: "The truth is rarely pure and never simple"),
    Quote(
        author: "Elon Musk",
        text: "Take 6 months for yourself to change the rest of yourself"),
  ];

  List<Quote> cardQuotes = [
    Quote(author: "me", text: "Every second counts, spend them wisely"),
    Quote(
        author: "Oscar Wilde",
        text: "The truth is rarely pure and never simple"),
    Quote(
        author: "Elon Musk",
        text: "Take 6 months for yourself to change the rest of yourself"),
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
      body: Column(children: [
        Column(
          children: quotes
              .map((quote) => personalTemplateBuild(buildQuote: quote))
              .toList(),
        ),
        Column(
          children: cardQuotes
              .map((cardQuote) => QuoteCard(buildQuote: cardQuote))
              .toList(),
        )
      ]),
    );
  }
}

class personalTemplateBuild extends StatelessWidget {
  final Quote buildQuote;
  personalTemplateBuild({required this.buildQuote});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: (Container(
        padding: EdgeInsets.all(20.0),
        color: Colors.indigoAccent[700],
        width: 370.0,
        margin: EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Center(
              child: Text(
                buildQuote.text,
                style: TextStyle(
                    color: Colors.deepOrange[600],
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.0,
                    fontSize: 27.0,
                    fontFamily: "Estonia"),
              ),
            ),
            SizedBox(height: 6.0),
            Text(
              " - ${buildQuote.author}",
              style: TextStyle(
                color: Colors.grey[200],
                fontWeight: FontWeight.bold,
                letterSpacing: 1.0,
              ),
            ),
          ],
        ),
      )),
    );
  }
}


