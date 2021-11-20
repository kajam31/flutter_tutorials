// ignore_for_file: prefer_const_constructors

import "package:flutter/material.dart";
import "package:http/http.dart";
import "dart:convert";

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  // asynchrones code
  void gettime() async {
    // make the request
    Response respose =
        await get(Uri.http("worldtimeapi.org", "api/timezone/Europe/Brussels"));
    Map data = jsonDecode(respose.body);
    // print(data);
    // get properties from data

    String datetime = data["datetime"];
    String offset = data["utc_offset"].substring(1, 3);

    // print(datetime);
    // print(offset);
    // create a datetime object
    DateTime now = DateTime.parse(datetime);
    now = now.add(Duration(hours: int.parse(offset)));
    print(now);
  }

  @override
  void initState() {
    super.initState();
    gettime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Text("loading screen"));
  }
}
