// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: Home()));

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override // will use the buildfunction it is refering to (underneath) to override the inherited build function
  // ignore: dead_code
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("my second app"),
        centerTitle: true,
        backgroundColor: Colors.green[800],
      ),
      body: Center(
        child: Image(
/*           image: NetworkImage(
              "https://cdna.artstation.com/p/assets/images/images/005/533/550/large/vincent-voet-galaxy-s6-edge-background1.jpg?1491765803"
              ), */
          image: AssetImage('assets/space_world.jpg'),
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
