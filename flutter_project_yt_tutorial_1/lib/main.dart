import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: Home()));

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  // ignore: dead_code
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("my test app"),
        centerTitle: true,
        backgroundColor: Colors.green[800],
      ),
      body: Center(
        child: Text(
          'this is a test!',
          style: TextStyle(
            fontSize: 40.0,
            fontWeight: FontWeight.bold,
            letterSpacing: 2.0,
            color: Colors.purple[800],
            fontFamily: 'Estonia',
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Text("click"),
        backgroundColor: Colors.red[600],
      ),
    );
  }
}
