import 'dart:async';
import 'package:flutter/material.dart';
import 'package:widget_sample/rabbit.dart';

class StatefulSample extends StatefulWidget {
  String title;
  Rabbit rabbit;

  StatefulSample({this.title, this.rabbit});
  @override
  _StatefulSampleState createState() => _StatefulSampleState();
}

class StatefulSampleState extends State<StatefulSample> {
  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 1), (timer) {
      int index = timer.tick % 4;
      setState(() {
        switch (index) {
          case 0:
            widget.rabbit.updateState(RabbitState.SLEEP);
            break;
          case 1:
            widget.rabbit.updateState(RabbitState.WALK);
            break;
          case 2:
            widget.rabbit.updateState(RabbitState.RUN);
            break;
          case 3:
            widget.rabbit.updateState(RabbitState.EAT);
            break;
        }
        print(widget.rabbit.state);
      });
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Container(
        child: Text(
          widget.rabbit.state.toString(),
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
