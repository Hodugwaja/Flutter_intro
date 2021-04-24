import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: GestureDetector(
          onTap: () {
            print("click");
          },
          onLongPress: () {
            print("Long pressed");
          },
          child: Row(
            children: [
              Text("아라동"),
              Icon(Icons.arrow_drop_down),
            ],
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon : Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {},
            icon : Icon(Icons.tune),
          ),IconButton(
            onPressed: () {},
            icon : Icon(Icons.search),
          )
        ],
      ),
    );
  }
}
