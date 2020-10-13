
import 'package:flutter/material.dart';
import 'package:risetecttask/Modal/MeetUp.dart';
import 'package:risetecttask/customWidgets/BadgeRedDot.dart';
import 'package:risetecttask/customWidgets/MeetUpListView.dart';
import 'package:risetecttask/customWidgets/PopMenuButtonAppBar.dart';
import 'package:risetecttask/dummyData.dart';
import 'package:risetecttask/resourses/AppIcons.dart';
import 'package:risetecttask/resourses/AppStringValues.dart';
import 'package:risetecttask/resourses/ScreenDimentions.dart';

class HomePage extends StatelessWidget {
  final List<MeetUp> goingMeetUpList=meetUpList.where((element) => element.status==Status.GOING).toList();
  final List<MeetUp> hostingMeetUpList=meetUpList.where((element) => element.status==Status.HOSTING).toList();
  final List<MeetUp> invitesMeetUpList=meetUpList.where((element) => element.status==Status.INVITES).toList();
  final List<MeetUp> favoriteMeetUpList=meetUpList.where((element) => element.isFavorite==true).toList();
  @override
  Widget build(BuildContext context) {
    ScreenDimensions.size=MediaQuery.of(context).size;
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: (){
            print(AppStrings.dropdownItemNameList[2]);
          },
        ),
        appBar: AppBar(
          centerTitle: true,
          title: Text(AppStrings.appBarTitle),
          actions: [
            AppIcons.appBarMap,
            SizedBox(width: ScreenDimensions.width*0.05,),
           // AppIcons.appBarMore,
            PopMenuButtonAppBar(),
            SizedBox(width: ScreenDimensions.width*0.02,)
          ],
          bottom: TabBar(
            isScrollable: true,
            tabs: [
              Tab(child:
              Text(AppStrings.tabBarItemNameList[0].toString()+" ("+goingMeetUpList.length.toString()+")")),
              Tab(child:Text(AppStrings.tabBarItemNameList[1].toString()+" ("+hostingMeetUpList.length.toString()+")")),
              Tab(child:Text(AppStrings.tabBarItemNameList[2].toString()+" ("+invitesMeetUpList.length.toString()+")")),
              Tab(child: AppIcons.favoriteIconTabBar,),
            ],
          ),
        ),
        body: TabBarView(

          children: [
            MeetUpListView(
              meetUpList: goingMeetUpList,
              trailingWidget: Icon(Icons.messenger_outline),
            ),
            MeetUpListView(
              meetUpList: hostingMeetUpList,
              trailingWidget: Row(
                children: [
                  Icon(Icons.messenger_outline),
                  SizedBox(width: 30,),
                  BadgeRedDot(
                    child: Icon(Icons.calendar_today),
                  )
                ],
              ),
            ),
            MeetUpListView(
              meetUpList: invitesMeetUpList,
              trailingWidget: Container(
                alignment: Alignment.center,
                width: 100,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(
                    width: 1, color: Colors.black
                  )
                ),
                child: Text("CHAT HOST",style: TextStyle(fontWeight: FontWeight.bold),),
              ),
            ),
            MeetUpListView(
              meetUpList: favoriteMeetUpList,
              trailingWidget: AppIcons.favoriteIconTabBar,
            ),
          ],
        ),
        bottomNavigationBar: _getBottomNavigationBar()
      ),
    );
  }
  Widget _getBottomNavigationBar(){
    return Theme(
      data: ThemeData(
        canvasColor: Colors.white
      ),
      child: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
              icon: BadgeRedDot(
                  child: AppIcons.bottomNavBarItemIconList[0]),
              label: ""
          ),
          BottomNavigationBarItem(
            icon: AppIcons.bottomNavBarItemIconList[1],
            label: "",
          ),
          BottomNavigationBarItem(
            icon: BadgeRedDot(
                child: AppIcons.bottomNavBarItemIconList[2]),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: AppIcons.bottomNavBarItemIconList[3],
            label: "",
          ),
          BottomNavigationBarItem(
            icon: BadgeRedDot(
                child: AppIcons.bottomNavBarItemIconList[4]),
            label: "",
          ),
        ],
      ),
    );
  }
}

