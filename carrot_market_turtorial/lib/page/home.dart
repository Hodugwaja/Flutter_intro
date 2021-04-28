import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Map<String, String>> Data = [];

  @override
  void initState() {
    super.initState();
    Data = [
      {
        "image": 'assets/images/youseong-1.jpg',
        "title": '제목',
        "location": "대전광역시 유성구 장동 23-9",
        "price": '4딸라',
        'likes': '1121'
      },
      {
        "image": 'assets/images/youseong-2.jpg',
        "title": '제목',
        "location": "대전광역시 유성구 장동 23-9",
        "price": '4딸라',
        'likes': '1972'
      },
      {
        "image": 'assets/images/youseong-3.jpg',
        "title": '제목',
        "location": "대전광역시 유성구 장동 23-9",
        "price": '4딸라',
        'likes': '1972'
      },
      {
        "image": 'assets/images/youseong-4.jpg',
        "title": '미안하다 이거 보여주려고 어그로 끌었다. 솔직히 저런 거 정말로 멋지지 않나? 가슴이 장웅해진다',
        "location": "대전광역시 유성구 장동 23-9",
        "price": '4딸라',
        'likes': '1972'
      },
      {
        "image": 'assets/images/youseong-5.jpg',
        "title": '상하이 나들목 단돈 4백만 딸라! 놓치지 마세요',
        "location": "대전광역시 유성구 장동 23-9",
        "price": '4백만 딸라',
        'likes': '1972'
      },
      {
        "image": 'assets/images/youseong-6.jpg',
        "title": '카나미 천재',
        "location": "대전광역시 유성구 장동 23-9",
        "price": '4딸라',
        'likes': '1972'
      },
      {
        "image": 'assets/images/youseong-7.jpg',
        "title": '나공익 볼짤',
        "location": "대전광역시 유성구 장동 23-9",
        "price": '4딸라',
        'likes': '1972'
      },
      {
        "image": 'assets/images/youseong-8.jpg',
        "title": '규카츠 먹으려고 산건데 규카츠를 사자마자 다 먹어서 팝니다 ㅜㅜ',
        "location": "대전광역시 유성구 장동 23-9",
        "price": '4딸라',
        'likes': '1972'
      },
      {
        "image": 'assets/images/youseong-9.jpg',
        "title": '우주원은 귀엽다',
        "location": "대전광역시 유성구 장동 23-9",
        "price": '4딸라',
        'likes': '1972'
      },
      {
        "image": 'assets/images/youseong-10.jpg',
        "title": '세젤귀 비상식량 맛젤',
        "location": "대전광역시 유성구 장동 23-9",
        "price": '4딸라',
        'likes': '1972'
      },
    ];
  }

  final oCcy = new NumberFormat('#,###', "ko_kr");

  String calcStringToWon(String priceString) {
    return "${oCcy.format(int.parse(priceString))}원";
  }

  Widget _appbarWidget() {
    return AppBar(
      title: GestureDetector(
        onTap: () {
          print("click");
        },
        child: PopupMenuButton<String>(
          offset : Offset(0, 25),
          shape: ShapeBorder.lerp(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
            1,
          ),
          itemBuilder: (BuildContext context) {
            return [
              PopupMenuItem(value: 'youseong', child: Text("대전광역시 유성구")),
              PopupMenuItem(value: 'danwon', child: Text("안산시 단원구")),
              PopupMenuItem(value: 'seocho', child: Text("서울특별시 서초구")),
            ];
          },
          child: Row(
            children: [
              Text("대전광역시 유성구"),
              Icon(Icons.arrow_drop_down),
            ],
          ),
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
          padding: const EdgeInsets.symmetric(vertical: 10),
          margin: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(5)),
                child: Image.asset(
                  Data[index]["image"],
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                ),
              ),
              Expanded(
                child: Container(
                  height: 100,
                  padding: EdgeInsets.only(left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        Data[index]["title"],
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontFamily: 'NotoSansCJKkr',
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        Data[index]["location"],
                        style: TextStyle(
                          fontFamily: 'NotoSansCJKkr',
                          fontSize: 12,
                          color: Colors.black.withOpacity(0.3),
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(height: 5),
                      Text(
                        Data[index]["price"],
                        style: TextStyle(
                          fontFamily: 'NotoSansCJKkr',
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(height: 5),
                      Expanded(
                        child: Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.end,
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
                        ),
                      ),
                    ],
                  ),
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appbarWidget(),
      body: _bodyWidget(),
    );
  }
}

/*

 */
