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
      body: 
      //  ############## used when you only need padding for a widget nothing else
      // Padding(
      //   padding: EdgeInsets.all(30.0),
      //   child: Text("test"),
      
      // ################ this is a container, this can be used when you want to layout content, like a div in html
      // Container(
      //   margin: EdgeInsets.all(30.0),
      //   padding: EdgeInsets.fromLTRB(10.0, 20.0, 30.0, 40.0),
      //   // padding: EdgeInsets.all(20.0),
      //   // padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      //   color: Colors.grey[400],
      //   child: Text("hello"),

        // ############# this is an icon that can be pressed just like a button
        //  Center(
        //    child: IconButton(
        //     onPressed: () {
        //      print("this Icon was presssed");
        //    },
        //     icon: Icon(Icons.alternate_email),
        //     color: Colors.indigo[700],
        //   ),

        // ################### button with icon and color ElevatedButton is the new and right way to use this kind of button istead of raised button
        // child: ElevatedButton.icon(
        //   onPressed: () {},
        //   icon: Icon(Icons.mail),
        //   label: Text("mail me"),
        //   style: ElevatedButton.styleFrom(primary: Colors.teal[700]),
        // ),

        // child: FlatButton(
        //   // child: RaisedButton( // you can choose between a raised button and a flat button, raised button will have a small shadow
        //   onPressed: () {
        //     print("you clicked me");
        //   },
        //   child: Text("click me"),
        //   color: Colors.lightBlue,
        // ),

        // ######## icons
        // child: Icon(
        //   Icons.airport_shuttle,
        //   color: Colors.lightBlue,
        //   size: 50.0,
        // ),
        // ################# images ######################
//         child: Image(
//  /*           image: NetworkImage(
//               "https://cdna.artstation.com/p/assets/images/images/005/533/550/large/vincent-voet-galaxy-s6-edge-background1.jpg?1491765803"
//               ), */
//           image: AssetImage('assets/space_world.jpg'),
//         ),
//         // child: Image.asset("assets/space_world.jpg"),
//         child: Image.network(
//             "https://th.bing.com/th/id/R.41517d9cc01e4e38a2e9e7842ad16584?rik=UnJHYRyu7DSDWA&riu=http%3a%2f%2fwww.pixelstalk.net%2fwp-content%2fuploads%2f2016%2f06%2fPhoto-phone-wallpaper.jpg&ehk=T9EVfIu8wyPP4SONtcOuZjM2gH72NSoM2QZBpAKSgQM%3d&risl=&pid=ImgRaw&r=0"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Text("click"),
        backgroundColor: Colors.red[600],
      ),
    );
  }
}
