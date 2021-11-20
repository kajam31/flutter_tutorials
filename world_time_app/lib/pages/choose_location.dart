// ignore_for_file: prefer_const_constructors

import "package:flutter/material.dart";
import 'package:world_time_app/services/world_time.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({Key? key}) : super(key: key);

  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  List<WorldTime> locations = [
	    WorldTime(url: 'Europe/London', location: 'London', flag: 'uk.png'),
	    WorldTime(url: 'Europe/Athens', location: 'Athens', flag: 'greece.png'),
	    WorldTime(url: 'Africa/Cairo', location: 'Cairo', flag: 'egypt.png'),
	    WorldTime(url: 'Africa/Nairobi', location: 'Nairobi', flag: 'kenya.png'),
	    WorldTime(url: 'America/Chicago', location: 'Chicago', flag: 'usa.png'),
	    WorldTime(url: 'America/New_York', location: 'New York', flag: 'usa.png'),
	    WorldTime(url: 'Asia/Seoul', location: 'Seoul', flag: 'south_korea.png'),
	    WorldTime(url: 'Asia/Jakarta', location: 'Jakarta', flag: 'indonesia.png'),
	  ];

  @override
  Widget build(BuildContext context) {
    // print("build function ran"); // is only temporary
    return Scaffold(
      backgroundColor: Colors.grey[400],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        elevation: 0.0,
        centerTitle: true,
        title: Text("choose a location"),
      ),
      
    );
  }
}
