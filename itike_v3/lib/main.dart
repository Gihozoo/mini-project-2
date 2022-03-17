// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:itike_v3/screens/buyticket.dart';
import 'package:itike_v3/screens/login.dart';
import 'package:itike_v3/screens/signup.dart';

import 'screens/homepage.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "E-tike",
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BuyTicket();
  }
}
