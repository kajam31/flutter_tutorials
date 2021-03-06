import 'package:flutter/material.dart';
import "quote.dart";

class QuoteCard extends StatelessWidget {
  final Quote buildQuote;
  final Function() delete;
  QuoteCard({required this.buildQuote, required this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              buildQuote.text,
              style: TextStyle(fontSize: 17.0, color: Colors.grey[600]),
            ),
            SizedBox(height: 1.0),
            Text(
              buildQuote.author,
              style: TextStyle(
                color: Colors.grey[400],
                fontSize: 16.0,
              ),
            ),
            SizedBox(height: 1.0),
            TextButton.icon(
              onPressed: delete,
              label: Text("delete quote"),
              icon: Icon(Icons.delete),
            ),
          ],
        ),
      ),
    );
  }
}
