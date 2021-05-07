import 'package:flutter/material.dart';

class ManorTemperature extends StatelessWidget {
  double manorTemp;
  int level;
  final List<Color> tempColors = [
    Color(0xff072038),
    Color(0xff0d3a65),
    Color(0xff186ec8),
    Color(0xff37b24d),
    Color(0xffffad13),
    Color(0xfff76787),
  ];

  ManorTemperature({Key key, this.manorTemp}) {
    _calcTempLevel();
  }

  void _calcTempLevel() {
    if (manorTemp <= 20)
      level = 0;
    else if (manorTemp <= 32)
      level = 1;
    else if (manorTemp <= 36.5)
      level = 2;
    else if (manorTemp <= 40)
      level = 3;
    else if (manorTemp <= 50)
      level = 4;
    else
      level = 5;
  }

  Widget _makeTempBar() {
    return Container(
      width: 65,
      child: Column(
        children: [
          Text(
            "${manorTemp}°C ",
            style: TextStyle(
              color: tempColors[level],
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Container(
              height: 6,
              color: Colors.black.withOpacity(0.2),
              child: Row(
                children: [
                  Container(
                    height: 6,
                    width: 65 / 99 * manorTemp,
                    color: tempColors[level],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              _makeTempBar(),
              Container(
                margin: const EdgeInsets.only(left : 7),
                width: 30,
                height: 30,
                child: Image.asset("assets/images/level-${level}.jpg"),
              ),
            ],
          ),
          Text("매너온도", style: TextStyle(fontSize: 12, color: Colors.grey)),
        ],
      ),
    );
  }
}
