import 'package:flutter/material.dart';
import 'package:flutterdoubanapp/constant/stringconstant.dart';

class BookAndMediaPage extends StatefulWidget {
  @override
  _BookAndMediaPageState createState() => _BookAndMediaPageState();
}

class _BookAndMediaPageState extends State<BookAndMediaPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(StringConstant.bookAndMedia),
    );
  }
}
