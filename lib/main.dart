import 'package:flutter/material.dart';
import 'package:flutterdoubanapp/constant/stringconstant.dart';

import 'bookandmedia/bookandmediapage.dart';
import 'group/grouppage.dart';
import 'home/homepage.dart';
import 'market/marketPage.dart';
import 'my/mypage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  List<Widget> pageView;

  int _selectedIndex = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pageView = new List()
      ..add(HomePage())
      ..add(BookAndMediaPage())
      ..add(GroupPage())
      ..add(MarketPage())
      ..add(MyPage());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: pageView[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home),title:Text(StringConstant.home)),
          BottomNavigationBarItem(icon: Icon(Icons.home),title:Text(StringConstant.bookAndMedia)),
          BottomNavigationBarItem(icon: Icon(Icons.home),title:Text(StringConstant.group)),
          BottomNavigationBarItem(icon: Icon(Icons.home),title:Text(StringConstant.market)),
          BottomNavigationBarItem(icon: Icon(Icons.home),title:Text(StringConstant.me)),
        ],
        currentIndex: _selectedIndex,
        unselectedItemColor: Colors.grey,
        fixedColor: Colors.blue,
        onTap: _onItemTapped,
      ),
    );
  }

  void _onItemTapped(int value) {
    setState(() {
      _selectedIndex = value;
    });
  }
}
