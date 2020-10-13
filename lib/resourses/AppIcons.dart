

import 'package:flutter/material.dart';

class AppIcons{
  static Widget get appBarMap=>Icon(Icons.map);
  static Widget get appBarMore=>Icon(Icons.more_vert);
  static List<Widget> dropdownItemIconList=[
    Icon(Icons.person_pin),
    Icon(Icons.wallet_travel),
    Container()
  ];
  static List<Widget> bottomNavBarItemIconList=[
      Icon(Icons.person,
        color: Colors.black,
        size: 25
      ),
      Icon(Icons.explore,
          color: Colors.black,
          size: 25),
      Icon(Icons.web,
        color: Colors.black,
        size: 40),
      Icon(Icons.people,
          color: Colors.black,
          size: 25),
      Icon(Icons.messenger,
          color: Colors.black,
          size: 25),
  ];
  static Widget favoriteIconTabBar=Icon(Icons.favorite,color: Colors.red[900]);
}