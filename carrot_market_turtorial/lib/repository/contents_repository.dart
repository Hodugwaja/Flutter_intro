class ContentsRepository {
  // ignore: non_constant_identifier_names
  Map<String, dynamic> Data = {
    "youseong": [
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
    ],
    "danwon": [
      {
        "image": "assets/images/danwon-1.jpg",
        "title": "LG 통돌이세탁기 15kg(내부)",
        "location": "안산시 단원구 초지동 화랑로 250",
        "price": "150000",
        "likes": "13"
      },
      {
        "image": "assets/images/danwon-2.jpg",
        "title": "3단책장 전면책장 가져가실분",
        "location": "안산시 단원구 초지동 화랑로 250",
        "price": "무료나눔",
        "likes": "6"
      },
      {
        "image": "assets/images/danwon-3.jpg",
        "title": "브리츠 컴퓨터용 스피커",
        "location": "안산시 단원구 초지동 화랑로 250",
        "price": "1000",
        "likes": "4"
      },
      {
        "image": "assets/images/danwon-4.jpg",
        "title": "안락 의자",
        "location": "안산시 단원구 초지동 화랑로 250",
        "price": "10000",
        "likes": "1"
      },
      {
        "image": "assets/images/danwon-5.jpg",
        "title": "어린이책 무료드림",
        "location": "안산시 단원구 초지동 화랑로 250",
        "price": "무료나눔",
        "likes": "1"
      },
      {
        "image": "assets/images/danwon-6.jpg",
        "title": "어린이책 무료드림",
        "location": "안산시 단원구 초지동 화랑로 250",
        "price": "무료나눔",
        "likes": "0"
      },
      {
        "image": "assets/images/danwon-7.jpg",
        "title": "칼세트 재제품 팝니다",
        "location": "안산시 단원구 초지동 화랑로 250",
        "price": "20000",
        "likes": "5"
      },
      {
        "image": "assets/images/danwon-8.jpg",
        "title": "아이팜장난감정리함팔아요",
        "location": "안산시 단원구 초지동 화랑로 250",
        "price": "30000",
        "likes": "29"
      },
      {
        "image": "assets/images/danwon-9.jpg",
        "title": "한색책상책장수납장세트 팝니다.",
        "location": "안산시 단원구 초지동 화랑로 250",
        "price": "1500000",
        "likes": "1"
      },
      {
        "image": "assets/images/danwon-10.jpg",
        "title": "순성 데일리 오가닉 카시트",
        "location": "안산시 단원구 초지동 화랑로 250",
        "price": "60000",
        "likes": "8"
      },
    ],
  };

  // ignore: missing_return
  Future<List<Map<String, String>>> loadContentsFromLocation(String location) async{
    //API 통신 location값을 보내주면서

    await Future.delayed(Duration(milliseconds: 1000));
    return Data[location];
  }
}
