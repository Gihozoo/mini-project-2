// ignore_for_file: camel_case_types, use_key_in_widget_constructors, prefer_const_constructors, prefer_final_fields, unused_field, deprecated_member_use, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(primaryColor: Colors.pinkAccent),
    title: 'Itike',
    home: SignUp(),
  ));
}

class SignUp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SignUpState();
  }
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Stack(
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(15.0, 170.0, 0.0, 0.0),
                  child: Text(
                    "SignUp",
                    style:
                        TextStyle(fontSize: 80.0, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(260.0, 170.0, 0.0, 0.0),
                  child: Text(
                    ".",
                    style: TextStyle(
                        fontSize: 80.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.pinkAccent),
                  ),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 35.0, left: 20.0, right: 20.0),
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                      labelText: "USERNAME",
                      labelStyle: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.pinkAccent))),
                ),
                SizedBox(height: 20.0),
                TextField(
                  decoration: InputDecoration(
                      labelText: "EMAIL",
                      labelStyle: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.pinkAccent))),
                ),
                SizedBox(height: 20.0),
                TextField(
                  decoration: InputDecoration(
                      labelText: "PASSWORD",
                      labelStyle: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.pinkAccent))),
                  obscureText: true,
                ),
                SizedBox(height: 40.0),
                Container(
                  height: 40.0,
                  child: Material(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.pinkAccent,
                    elevation: 7.0,
                    child: GestureDetector(
                      onTap: () {
                        //Code here
                      },
                      child: Center(
                          child: Text(
                        'SIGNUP',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      )),
                    ),
                  ),
                ),
                SizedBox(height: 10.0),
                Container(
                  height: 40.0,
                  color: Colors.transparent,
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.black,
                            style: BorderStyle.solid,
                            width: 1.0),
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(20.0)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                          child: Text("Back",
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
