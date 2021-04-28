import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import './home.dart';

class App extends StatefulWidget {
  App({Key key}) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  // ignore: non_constant_identifier_names

  int _currentPageIndex;
  var name = "호두과자";

  void initState() {
    super.initState();
    _currentPageIndex = 0;

  }



  Widget _bodyWidget() {
    switch(_currentPageIndex){
      case 0:
        return Home();
        break;
      case 1:
        return Container();
        break;
      case 2:
        return Container();
        break;
      case 3:
        return Container();
        break;
      case 4:
        return Container();
        break;
      default:
        return Container();
        break;
    }

  }

  BottomNavigationBarItem _bottomNavigationBarItem(String iconName, String label) {
    return BottomNavigationBarItem(
      icon: SvgPicture.asset(
        'assets/svg/${iconName}_off.svg',
        width: 22,
      ),
      activeIcon: SvgPicture.asset(
      'assets/svg/${iconName}_on.svg',
      width: 22,
    ),
      label: label,
    );
  }

  Widget _bottomNavigationBarWidget() {
    return BottomNavigationBar(
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.black,
      showUnselectedLabels: true,
      showSelectedLabels: true,
      type : BottomNavigationBarType.fixed,
      onTap: (int index){
        setState(() {
          _currentPageIndex = index;
        });
      },
      currentIndex: _currentPageIndex,
      items: [
        _bottomNavigationBarItem('home', '홈'),
        _bottomNavigationBarItem('notes', '동네생활'),
        _bottomNavigationBarItem('location', '내 근처'),
        _bottomNavigationBarItem('chat', '채팅'),
        _bottomNavigationBarItem('user', name),
      ],
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: _bodyWidget(),
      bottomNavigationBar: _bottomNavigationBarWidget(),
    );
  }
}