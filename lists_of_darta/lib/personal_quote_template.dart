import 'package:flutter/material.dart';
import "quote.dart";

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
