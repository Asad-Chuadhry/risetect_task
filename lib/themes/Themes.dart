

import 'package:flutter/material.dart';

class MyThemes extends Object{
  ThemeData get lightTheme=>ThemeData(
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: Colors.red[900]
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      elevation: 5,
      unselectedIconTheme: IconThemeData(
        color: Colors.black,
        size: 25
      )
    ),

    appBarTheme: AppBarTheme(
      color: Colors.white,
      iconTheme: IconThemeData(
        color: Colors.black,
        size: 25
      ),
      textTheme: TextTheme(
        headline6: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 18
        ),
      )
    ),
    indicatorColor: Colors.red[900],
    tabBarTheme: TabBarTheme(
      unselectedLabelColor: Colors.grey[700],
      labelColor: Colors.black,
      indicatorSize: TabBarIndicatorSize.tab
    ),
    primarySwatch: Colors.blueGrey,
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}