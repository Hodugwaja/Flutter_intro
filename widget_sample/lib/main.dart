import 'package:flutter/material.dart';
import 'package:widget_sample/stateless_sample.dart';
import 'package:widget_sample/stateful_sample.dart';
import 'package:widget_sample/rabbit.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FlutterDemo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      /*
      home : StatelessSample(
        title : "구멍이 없는 박스로 실행하는 자",
        rabbit : Rabbit(name : '호두토끼1', state : RabbitState.SLEEP)
      ),*/
      home: StatefulSample(
          title: "구멍이 있는 박스로 실행하는 자",
          rabbit: Rabbit(name: '호두토끼2', state: RabbitState.SLEEP)),
    );
  }
}
