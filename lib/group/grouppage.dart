import 'package:flutter/material.dart';
import 'package:flutterdoubanapp/constant/stringconstant.dart';

class GroupPage extends StatefulWidget {
  @override
  _GroupPageState createState() => _GroupPageState();
}

class _GroupPageState extends State<GroupPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(StringConstant.group),
    );
  }
}
