import 'package:flutter/material.dart';
import 'package:flutterdoubanapp/constant/imagesconstant.dart';
import 'package:flutterdoubanapp/constant/stringconstant.dart';
import 'package:flutterdoubanapp/my/my_list_content_widget.dart';

import 'model/my_list_bean.dart';

class MyPage extends StatefulWidget {
  @override
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> with SingleTickerProviderStateMixin {
  TabController controller;
  List<MyListBean> listBean;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller =
        TabController(vsync: this, length: MyListContentWidget().tabs.length);
    listBean = [
      MyListBean(ImagesConstant.My_List_Release, StringConstant.release),
      MyListBean(ImagesConstant.My_List_Journal, StringConstant.journal),
      MyListBean(ImagesConstant.My_List_Follows, StringConstant.follows),
      MyListBean(ImagesConstant.My_List_Album, StringConstant.album),
      MyListBean(ImagesConstant.My_List_Doulist, StringConstant.douList),
      MyListBean(ImagesConstant.My_List_Wallet, StringConstant.wallet),
      MyListBean(
          ImagesConstant.My_List_Shopping_Cart, StringConstant.shopping_cart),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: NestedScrollView(
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              return <Widget>[
                SliverAppBar(
                  expandedHeight: 150.0,
                  floating: true,
                  snap: false,
                  pinned: true,
                  flexibleSpace: FlexibleSpaceBar(
                    centerTitle: true,
                    title: Text(
                      "标题",
                      style: TextStyle(color: Colors.redAccent, fontSize: 16.0),
                    ),
                    background: Image.asset(
                      ImagesConstant.My_Bg_Image,
                      fit: BoxFit.fill,
                    ),
                  ),
                )
              ];
            },
            body: ListView.separated(
              padding: const EdgeInsets.all(8),
              itemCount: listBean.length + 1,
              itemBuilder: (BuildContext context, int index) {
                if (index == 0) {
                  return MyListContentWidget().bookAndMedia(controller);
                } else {
                  return MyListContentWidget().myListContent(listBean[index-1]);
                }
              },
              separatorBuilder: (BuildContext context, int index) =>
                  const Divider(),
            )));
  }
}
