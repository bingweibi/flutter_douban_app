import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterdoubanapp/constant/imagesconstant.dart';
import 'package:flutterdoubanapp/constant/stringconstant.dart';
import 'package:flutterdoubanapp/my/model/my_list_bean.dart';

class MyListContentWidget {
  List<String> tabs = [
    StringConstant.video,
    StringConstant.music,
    StringConstant.book
  ];

  List<MyListMediaBookBean> listBean = [
    MyListMediaBookBean(ImagesConstant.My_List_Video, StringConstant.want_look,StringConstant.looking,StringConstant.looked),
    MyListMediaBookBean(ImagesConstant.My_List_Music, StringConstant.want_look,StringConstant.looking,StringConstant.looked),
    MyListMediaBookBean(ImagesConstant.My_List_Book, StringConstant.want_look,StringConstant.looking,StringConstant.looked),
  ];

  Widget bookAndMedia(TabController mController) {
    return Container(
      height: 140,
      child: Column(
        children: <Widget>[
          Container(
            alignment: Alignment.centerLeft,
            child: TabBar(
              tabs: tabs.map((item) {
                return Tab(
                  text: item,
                );
              }).toList(),
              isScrollable: true,
              labelColor: Colors.redAccent,
              unselectedLabelColor: Colors.grey,
              labelStyle: TextStyle(fontSize: 16.0),
              controller: mController,
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: mController,
              children: [
                myMediaAndBook(listBean[0]),
                myMediaAndBook(listBean[1]),
                myMediaAndBook(listBean[2]),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget myListContent(MyListBean listBean) {
    return Container(
      height: 36,
      child: Row(
        children: <Widget>[
          SizedBox(
            width: 5,
          ),
          Image.asset(listBean.imgUrl,width: 18,height: 18,),
          SizedBox(
            width: 8,
          ),
          Text(listBean.text,style: TextStyle(fontSize: 16),),
        ],
      ),
    );
  }
  Widget myMediaAndBook(MyListMediaBookBean listBean){
    return Container(
      height: 80,
      padding: EdgeInsets.only(top: 14),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Column(children: <Widget>[
            Image.asset(listBean.imgUrl,width: 60,height: 60,),
            Text(listBean.wantLook,style: TextStyle(fontSize: 12),),
          ],),
          Column(children: <Widget>[
            Image.asset(listBean.imgUrl,width: 60,height: 60,),
            Text(listBean.looking,style: TextStyle(fontSize: 12),),
          ],),
          Column(children: <Widget>[
            Image.asset(listBean.imgUrl,width: 60,height: 60,),
            Text(listBean.looked,style: TextStyle(fontSize: 12),),
          ],)
        ],
      ),
    );
  }
}
