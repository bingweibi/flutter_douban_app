import 'package:flutter/material.dart';
import 'package:flutterdoubanapp/constant/stringconstant.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(StringConstant.home),
    );
  }
}
