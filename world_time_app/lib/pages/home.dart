// ignore_for_file: prefer_const_constructors

import "package:flutter/material.dart";

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Object? data; // is the new way of doing it

  @override
  Widget build(BuildContext context) {
    data = ModalRoute.of(context)!.settings.arguments as Map; // is the new way of doing it
    return Scaffold(
        body: SafeArea(
            child: Column(
      children: <Widget>[
        TextButton.icon(
            onPressed: () {
              Navigator.pushNamed(context, "/location");
            },
            icon: Icon(Icons.edit_location),
            label: Text("edit location"))
      ],
    )));
  }
}
