import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class DetailContentView extends StatefulWidget {
  Map<String, String> data;

  DetailContentView({Key key, this.data}) : super(key: key);

  @override
  _DetailContentViewState createState() => _DetailContentViewState();
}

class _DetailContentViewState extends State<DetailContentView> {
  Size size;
  List<Map<String, String>> imgList;
  int _current;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    size = MediaQuery.of(context).size;
    imgList = [
      {
        "id": "1",
        "url": widget.data["image"],
      },
      {
        "id": "2",
        "url": widget.data["image"],
      },
      {
        "id": "3",
        "url": widget.data["image"],
      },
      {
        "id": "4",
        "url": widget.data["image"],
      },
      {
        "id": "5",
        "url": widget.data["image"],
      },
    ];
  }

  Widget _appbarWidget() {
    return AppBar(
      backgroundColor: Color.fromRGBO(22, 22, 22, 0.5),
      elevation: 0,
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.share),
          color: Colors.white,
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.more_vert),
          color: Colors.white,
        ),
      ],
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
      ),
    );
  }

  Widget _bodyWidget() {
    return Container(
      child: Column(
        children: [
          Hero(
            tag: widget.data["cid"],
            child: CarouselSlider(
              items: imgList.map((map) {
                return Image.asset(
                map["url"],
                  width: size.width,
                  fit: BoxFit.fill,
                );
              }).toList(),
              options: CarouselOptions(
                  initialPage: 0,
                  enableInfiniteScroll: false,
                  viewportFraction: 1,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _current = index;
                    });
                  }),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: imgList.map((map) {
              return Container(
                width: 8.0,
                height: 8.0,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: _current == int.parse(map["id"])
                      ? Color.fromRGBO(0, 0, 0, 0.9)
                      : Color.fromRGBO(0, 0, 0, 0.4),
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }

  Widget _bottomNavWidget() {
    return Container(
      width: size.width,
      height: 55,
      color: Colors.red,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: _appbarWidget(),
      body: _bodyWidget(),
      bottomNavigationBar: _bottomNavWidget(),
    );
  }
}
