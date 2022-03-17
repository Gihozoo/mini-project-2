// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Homescreen",
    home: HomeScreen(),
  ));
}

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomeScreenState();
  }
}

class HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pinkAccent,
      body: ListView(children: [
        Padding(
          padding: EdgeInsets.only(top: 15.0, bottom: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                  icon: Icon(Icons.arrow_back_ios),
                  color: Colors.white,
                  onPressed: () {
                    // Code here
                  }),
              // Container(
              //   width: 125.0,
              //   color: Colors.white,
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //     children: [
              //       IconButton(
              //         icon: Icon(Icons.menu),
              //         color: Colors.white,
              //         onPressed: () {
              //           //COde here
              //         },
              //       )
              //     ],
              //   ),
              // ),
            ],
          ),
        ),
        SizedBox(height: 25.0),
        Container(
          child: Stack(
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(15.0, 170.0, 0.0, 0.0),
                child: Text(
                  "Our destinations",
                  style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(305.0, 170.0, 0.0, 0.0),
                child: Text(".",
                    style: TextStyle(
                        fontSize: 40.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white)),
              )
            ],
          ),
        ),
        SizedBox(height: 40.0),
        Container(
          height: MediaQuery.of(context).size.height - 185.0,
          decoration: BoxDecoration(
            color: Colors.white,
            // borderRadius: BorderRadius.only(topLeft: Radius.circular(75.0))
          ),
          child: ListView(
            primary: false,
            padding: EdgeInsets.only(left: 25.0, right: 20.0),
            children: [
              Padding(
                  padding: EdgeInsets.only(top: 45.0),
                  child: Container(
                    height: MediaQuery.of(context).size.height - 300.0,
                    child: ListView(
                      children: [
                        _buildFoodItem(
                            'images/buses.jpeg', "Huye - Kigali", "2560F"),
                        _buildFoodItem(
                            'images/buses.jpeg', "Kigali - Rubavu", "2560F"),
                        _buildFoodItem(
                            'images/buses.jpeg', "Kigali - Gatuna", "2560F"),
                        _buildFoodItem(
                            'images/buses.jpeg', "Nyanza - Muhanga", "2560F"),
                        _buildFoodItem(
                            'images/buses.jpeg', "Kigali - Rusizi", "2560F"),
                      ],
                    ),
                  )),
              SizedBox(width: 40.0),
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
                      child: Text("BOOK BUS",
                          style: TextStyle(fontWeight: FontWeight.bold))))
              // Row(
              //   children: [
              //     Container(
              //       width: 360.0,
              //     ),

              //     Container(
              //       height: 65.0,
              //       width: 120.0,
              //       decoration: BoxDecoration(
              //           border: Border.all(
              //               color: Colors.grey,
              //               style: BorderStyle.solid,
              //               width: 1.0),
              //           borderRadius: BorderRadius.circular(10.0),
              //           color: Colors.pinkAccent),
              //       child: Center(
              //           child: Text('Book Bus',
              //               style: TextStyle(
              //                   fontFamily: 'Montserrat',
              //                   color: Colors.white,
              //                   fontSize: 15.0))),
              //     )
              //   ],
              // )
            ],
          ),
        )
      ]),
    );
  }

  Widget _buildFoodItem(String imgPath, String foodName, String price) {
    return Padding(
        padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
        child: InkWell(
            onTap: () {
              //code here
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                    child: Row(children: [
                  Hero(
                      tag: imgPath,
                      child: Image(
                          image: AssetImage(imgPath),
                          fit: BoxFit.cover,
                          height: 75.0,
                          width: 75.0)),
                  SizedBox(width: 10.0),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(foodName,
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 17.0,
                                fontWeight: FontWeight.bold)),
                        Text(price,
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 15.0,
                                color: Colors.grey))
                      ])
                ])),
                IconButton(
                    icon: Icon(Icons.add),
                    color: Colors.black,
                    onPressed: () {})
              ],
            )));
  }
}
