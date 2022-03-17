// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Book ticket",
    theme: ThemeData(primaryColor: Colors.pinkAccent),
    home: BuyTicket(),
  ));
}

class BuyTicket extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return BuyTicketState();
  }
}

class BuyTicketState extends State<BuyTicket> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.pinkAccent,
            title: Text("Ticket Information"),
            leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                //code here
              },
            )),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.only(top: 70.0, left: 20.0, right: 20.0),
              child: TextFormField(
                decoration: InputDecoration(
                    labelText: "NAME",
                    labelStyle: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.pinkAccent))),
              ),
            ),
            SizedBox(height: 20.0),
            Container(
                padding: EdgeInsets.only(left: 20.0, right: 20.0),
                child: TextFormField(
                  decoration: InputDecoration(
                      labelText: "TIME",
                      labelStyle: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.pinkAccent))),
                )),
            SizedBox(height: 20.0),
            Row(
              children: [
                Expanded(
                  child: Container(
                      padding: EdgeInsets.only(left: 20.0, right: 20.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                            labelText: "To",
                            labelStyle: TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey),
                            focusedBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.pinkAccent))),
                      )),
                ),
                SizedBox(width: 20.0),
                Expanded(
                  child: Container(
                      padding: EdgeInsets.only(left: 20.0, right: 20.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                            labelText: "To",
                            labelStyle: TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey),
                            focusedBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.pinkAccent))),
                      )),
                )
              ],
            ),
            SizedBox(height: 100.0),
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
                    child: Text("Book Ticket",
                        style: TextStyle(fontWeight: FontWeight.bold)))),
            SizedBox(height: 10.0),
            Container(
                height: 40.0,
                width: double.infinity,
                child: FlatButton(
                    color: Colors.transparent,
                    textColor: Colors.black,
                    onPressed: () {
                      // Code here
                    },
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Text("Go Back",
                        style: TextStyle(fontWeight: FontWeight.bold)))),
          ],
        ));
  }
}
