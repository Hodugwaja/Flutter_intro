import 'package:flutter/material.dart';

class DetailContentView extends StatefulWidget {
  Map<String, String> data;

  DetailContentView({Key key, this.data}) : super(key: key);

  @override
  _DetailContentViewState createState() => _DetailContentViewState();
}

class _DetailContentViewState extends State<DetailContentView> {

  Widget _appbarWidget(){
    return Container();
  }

  Widget _bodyWidget(){
    return Container();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(widget.data["title"]),
      ),
    );
  }
}
