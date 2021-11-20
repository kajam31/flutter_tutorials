// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:world_time_app/pages/choose_location.dart';
import 'package:world_time_app/pages/home.dart';
import 'package:world_time_app/pages/Loading.dart';

void main() => runApp(MaterialApp(
  initialRoute: "/home",
  routes: {
    '/': (context) => Loading(),
    "/home": (context) => Home(),
    "/location": (context) => ChooseLocation(),
  },
));
