import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
    home: Scaffold(
        appBar: AppBar(
          title: Text("my test app"),
          centerTitle: true,
          backgroundColor: Colors.green[800],
        ),
        body: Center(
          	child: Text(
            	'this a test!',
            	style: TextStyle(
             		fontSize: 20.0,
              		fontWeight: FontWeight.bold,
              		letterSpacing: 2.0,
              		color: Colors.purple[800],
            	),
          	),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Text("click"),
          backgroundColor: Colors.red[600],
        ),
    ),
));
