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
        await get(Uri.http("worldtimeapi.org", "/api/timezone/Europe/London"));
    Map data = jsonDecode(respose.body);
    // print(data);
    // get properties from data

    String datetime = data["datetime"];
    String offset = data["utc_offset"];

    print(datetime);
    print(offset);
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
