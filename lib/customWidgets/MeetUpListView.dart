

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:risetecttask/Modal/MeetUp.dart';
import 'package:risetecttask/customWidgets/MeetUpListItem.dart';

class MeetUpListView extends StatelessWidget {
  final List<MeetUp> meetUpList;
  final Widget trailingWidget;
  MeetUpListView({this.meetUpList,this.trailingWidget});
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemCount: meetUpList.length,
         itemBuilder: (context,index){
           return MeetUpListItem(meetUp: meetUpList[index],
             trailingWidget: trailingWidget,);
         },
        separatorBuilder: (BuildContext context, int index) =>
          Container(
            padding: EdgeInsets.only(left: 18,right: 18),
            color: Colors.white,
            child: Container(
              color: Colors.grey[300],
              height: 2,
          ),
        ),
      );
  }
}
