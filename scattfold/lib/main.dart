import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title : "Flutter Scattfold",
      theme : ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home : ScaffoldSample(),
    );
  }
}

class ScaffoldSample extends StatefulWidget{
  @override
  _ScaffoldSampleState createState() => _ScaffoldSampleState();
}

class ScaffoldSampleState extends State<ScaffoldSample>{
  @override
  Widget build(BuildContext context){
    return Container();
  }
}