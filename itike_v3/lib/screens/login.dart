// ignore_for_file: camel_case_types, use_key_in_widget_constructors, prefer_const_constructors, prefer_final_fields, unused_field, deprecated_member_use, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(primaryColor: Colors.pinkAccent),
    title: 'Itike',
    home: loginForm(),
  ));
}

class loginForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _loginFormState();
  }
}

class _loginFormState extends State<loginForm> {
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
                  padding: EdgeInsets.fromLTRB(15.0, 100.0, 0.0, 0.0),
                  child: Text(
                    "Hello",
                    style:
                        TextStyle(fontSize: 80.0, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(15.0, 170.0, 0.0, 0.0),
                  child: Text(
                    "There",
                    style:
                        TextStyle(fontSize: 80.0, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(220.0, 170.0, 0.0, 0.0),
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
                SizedBox(height: 5.0),
                Container(
                  alignment: Alignment(1.0, 0.0),
                  padding: EdgeInsets.only(top: 15.0, left: 20.0),
                  child: InkWell(
                    onTap: () {
                      //code here
                    },
                    child: Text(
                      "Forgot password",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.pinkAccent,
                          decoration: TextDecoration.underline),
                    ),
                  ),
                ),
                SizedBox(height: 60.0),
                Container(
                    height: 40.0,
                    width: double.infinity,
                    child: FlatButton(
                        color: Colors.pinkAccent,
                        textColor: Colors.white,
                        onPressed: () {
                          // Code here
                        },
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0)),
                        child: Text("LOGIN",
                            style: TextStyle(fontWeight: FontWeight.bold)))),
                // SizedBox(height: 10.0),
                // Container(
                //   height: 40.0,
                //   color: Colors.transparent,
                //   child: Container(
                //     decoration: BoxDecoration(
                //         border: Border.all(
                //             color: Colors.black,
                //             style: BorderStyle.solid,
                //             width: 1.0),
                //         color: Colors.transparent,
                //         borderRadius: BorderRadius.circular(20.0)),
                //     child: Row(
                //       mainAxisAlignment: MainAxisAlignment.center,
                //       children: [
                //         Center(
                //           child: Text("Log in with Facebook",
                //               style: TextStyle(fontWeight: FontWeight.bold)),
                //         )
                //       ],
                //     ),
                //   ),
                // )
              ],
            ),
          ),
          SizedBox(height: 25.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("New on Itike?", style: TextStyle(color: Colors.black)),
              SizedBox(width: 5.0),
              InkWell(
                onTap: () {
                  //code here
                },
                child: Text("Register",
                    style: TextStyle(
                        color: Colors.pinkAccent,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline)),
              )
            ],
          )
        ],
      ),
    );
  }
}
