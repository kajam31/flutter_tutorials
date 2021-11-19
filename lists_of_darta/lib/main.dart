import 'package:flutter/material.dart';
import "quote.dart";
import "quote_card.dart";
import "personal_quote_template.dart";

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
              .map((cardQuote) => QuoteCard(
                  buildQuote: cardQuote,
                  delete: () {
                    setState(() {
                      cardQuotes.remove(cardQuote);
                    });
                  }))
              .toList(),
        )
      ]),
    );
  }
}
