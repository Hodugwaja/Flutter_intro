import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // ignore: non_constant_identifier_names
  List<Map<String, String>> Data = [];

  void initState() {
    super.initState();
    Data = [
      {
        "image": 'assets/images/ara1.jpg',
        "title": '제목',
        "location": "위치",
        "price": '4딸라',
        'likes': '1972'
      },
      {
        "image": 'assets/images/ara-2.jpg',
        "title": '제목',
        "location": "위치",
        "price": '4딸라',
        'likes': '1972'
      },
      {
        "image": 'assets/images/ara-3.jpg',
        "title": '제목',
        "location": "위치",
        "price": '4딸라',
        'likes': '1972'
      },
      {
        "image": 'assets/images/ara-4.jpg',
        "title": '제목',
        "location": "위치",
        "price": '4딸라',
        'likes': '1972'
      },
      {
        "image": 'assets/images/ara-5.jpg',
        "title": '키뮤가 아니라 미뮤라고요',
        "location": "위치",
        "price": '4딸라',
        'likes': '1972'
      },
      {
        "image": 'assets/images/ara-6.jpg',
        "title": '카나미 천재',
        "location": "위치",
        "price": '4딸라',
        'likes': '1972'
      },
      {
        "image": 'assets/images/ara-7.jpg',
        "title": '나공익 볼짤',
        "location": "위치",
        "price": '4딸라',
        'likes': '1972'
      },
      {
        "image": 'assets/images/ara-8.jpg',
        "title": '규카츠 먹고 싶다',
        "location": "위치",
        "price": '4딸라',
        'likes': '1972'
      },
      {
        "image": 'assets/images/ara-9.jpg',
        "title": '우주원은 귀엽다',
        "location": "위치",
        "price": '4딸라',
        'likes': '1972'
      },
      {
        "image": 'assets/images/ara-10.jpg',
        "title": '맛젤이는 세젤귀 비상식량',
        "location": "위치",
        "price": '4딸라',
        'likes': '1972'
      },
    ];
  }

  Widget _appbarWidget() {
    return AppBar(
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
      elevation: 1,
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.search),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.tune),
        ),
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset('assets/svg/bell.svg', width: 22),
        )
      ],
    );
  }

  Widget _bodyWidget() {
    return ListView.separated(
      itemCount: Data.length,
      itemBuilder: (BuildContext _context, int index) {
        return Container(
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(5)),
                child: Image.asset(
                  Data[index]["image"],
                  width: 100,
                  height: 100,
                ),
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(Data[index]["title"]),
                    Text(Data[index]["location"]),
                    Text(Data[index]["price"]),
                    Row(
                      mainAxisAlignment : MainAxisAlignment.end,
                      crossAxisAlignment : CrossAxisAlignment.end,
                      children: [
                        SvgPicture.asset(
                          'assets/svg/heart_off.svg',
                          width: 13,
                          height: 13,
                        ),
                        SizedBox(width: 5),
                        Text(Data[index]["likes"]),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
      separatorBuilder: (BuildContext _context, int index) {
        return Container(height: 1, color: Color(0xff999999));
      },
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appbarWidget(),
      body: _bodyWidget(),
    );
  }
}
