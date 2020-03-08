import 'package:flutter/material.dart';
import 'package:flutterdoubanapp/constant/stringconstant.dart';

class MarketPage extends StatefulWidget {
  @override
  _MarketPageState createState() => _MarketPageState();
}

class _MarketPageState extends State<MarketPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(StringConstant.market),
    );
  }
}
