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
  Widget quoteTemplate(cardQuote) {
    return Card(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
      child: Column(
        children: <Widget>[
          Text(
            cardQuote.text,
            style: TextStyle(fontSize: 18.0, color: Colors.grey[600]),
          ),
          SizedBox(height: 6.0),
          Text(
            cardQuote.author,
            style: TextStyle(
              color: Colors.grey[400],
              fontSize: 16.0,
            ),
          ),
        ],
      ),
    );
  }

  Widget personalTemplate(quote) {
    return Center(
      child: (Container(
        padding: EdgeInsets.all(20.0),
        color: Colors.indigoAccent[700],
        width: 350.0,
        margin: EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Center(
              child: Text(
                quote.text,
                style: TextStyle(
                    color: Colors.deepOrange[600],
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.0,
                    fontSize: 25.0,
                    fontFamily: "Estonia"),
              ),
            ),
            SizedBox(height: 6.0),
            Text(
              " - ${quote.author}",
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
          children: quotes.map((quote) => personalTemplate(quote)).toList(),
        ),
        Column(
          children:
              cardQuotes.map((cardQuote) => quoteTemplate(cardQuote)).toList(),
        )
      ]),
    );
  }
}
