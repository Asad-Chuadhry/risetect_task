
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:intl/intl.dart';
import 'package:risetecttask/Modal/MeetUp.dart';
import 'package:risetecttask/resourses/ScreenDimentions.dart';

class MeetUpListItem extends StatelessWidget {
  final MeetUp meetUp;
  final Widget trailingWidget;
  MeetUpListItem({this.meetUp,this.trailingWidget});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          ListTile(
            title: Text(meetUp.title,
              style: TextStyle(fontSize: 20),
            ),
            subtitle: Row(
              children: [
                Icon(Icons.calendar_today,size: 15,),
                SizedBox(width: 5,),
                Text(DateFormat('EEEEEEEE, MMMM d').format(meetUp.date)),
              ],
            ),
          ),
          Container(
            width: ScreenDimensions.width,
            height: ScreenDimensions.height*0.09,
            padding: EdgeInsets.only(left: 15,right: 15),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children:[
                ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: meetUp.imagesList.map((e) => Padding(
                    padding: const EdgeInsets.only(right:8.0,bottom: 8),
                    child: Container(
                      width: (meetUp.status==Status.NONE)?200:60,
                        height: 50,
                        decoration: BoxDecoration(
                          shape: (meetUp.status==Status.NONE)?BoxShape.rectangle: BoxShape.circle,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(e)
                          )
                        ),
                    ),
                  )
                  ).toList(),),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(right:20.0),
                child: trailingWidget,
              )
              ]
            ),
          ),
        ],
      ),
    );
  }
}
