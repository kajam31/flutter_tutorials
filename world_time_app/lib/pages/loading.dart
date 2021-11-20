// ignore: file_names
// ignore_for_file: prefer_const_constructors, unused_import

import "package:flutter/material.dart";
import "package:world_time_app/services/world_time.dart";

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  // asynchrones code

  String time = "loading";

  void setupWorldTime() async {
    WorldTime instance = WorldTime(
        location: "Berlin", flag: "germany.png", url: "Europe/Berlin");
    await instance
        .gettime(); // there has to be an await in front of this because the code undeneath needs the value that we are getting here
    Navigator.pushNamed(context, "/home"); // if you are running this, you ar pushing the home route ontop of the other page
    Navigator.pushReplacementNamed(context, "/home");  // this will replace the loading page with the home page
    // print(instance.time);
    // setState(() {
    //   time = instance.time;
    // });
  }

  @override
  void initState() {
    super.initState();
    setupWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(50.0),
      child: Text("loading"),
    ));
  }
}
