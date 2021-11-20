// ignore_for_file: prefer_const_constructors

import "package:flutter/material.dart";

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map data = {};

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    data = data.isNotEmpty
        ? data
        : ModalRoute.of(context)!.settings.arguments as Map;
    // print(data);

    // set background
    String bgImage = data["isDaytime"] ? "day.png" : "night.png";
    Color bgColor =
        data["isDaytime"] ? Colors.blue : Color.fromARGB(255, 40, 39, 97);
    Color txColor = data["isDaytime"] ? Colors.black : Colors.white;

    return Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/$bgImage"),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0.0, 120.0, 0.0, 0.0),
            child: Column(
              children: <Widget>[
                TextButton.icon(
                  onPressed: () async {
                    dynamic result = await Navigator.pushNamed(context,
                        "/location"); // the whole action of going to the pick location page
                    // and picking a location and going back to the home page
                    //can be seen as 1 action that we have to wait for before
                    //we can run the rest of the code. (result is the new value when we return to the screen)
                    // dynamic => when you don't really know what you are getting back
                    setState(() {
                      data = {
                        "time": result["time"],
                        "location": result["location"],
                        "isDaytime": result["isDaytime"],
                        "flag": result["flag"]
                      };
                    });
                  },
                  icon: Icon(
                    Icons.edit_location,
                    color: txColor,
                  ),
                  label: Text(
                    "edit location",
                    style: TextStyle(
                      color: txColor,
                    ),
                  ),
                ),
                SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      data["location"],
                      style: TextStyle(
                        fontSize: 28.0,
                        letterSpacing: 2.0,
                        color: txColor,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20.0),
                Text(
                  data["time"],
                  style: TextStyle(
                    fontSize: 66.0,
                    color: txColor,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
