

import 'package:flutter/material.dart';
import 'package:risetecttask/resourses/AppIcons.dart';
import 'package:risetecttask/resourses/AppStringValues.dart';
class Item{
  final String name;
  final Widget icon;
  const Item({@required this.name,@required this.icon});
}
class PopMenuButtonAppBar extends StatelessWidget {
  final List<Item> itemList=[
    Item(
        name: AppStrings.dropdownItemNameList[0],
        icon: AppIcons.dropdownItemIconList[0]
    ),
    Item(
        name: AppStrings.dropdownItemNameList[1],
        icon: AppIcons.dropdownItemIconList[1]
    ),
    Item(
        name: AppStrings.dropdownItemNameList[2],
        icon: AppIcons.dropdownItemIconList[2]
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<Item>(
      //  elevation: 4,
      // initialValue: itemList[0],
        onSelected: (item){
          Scaffold.of(context).showSnackBar(SnackBar(content: Text(item.name+" is Pressed")));
        },
        icon: AppIcons.appBarMore,
        itemBuilder: (context){
          return [
            PopupMenuItem<Item>(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right:20.0),
                    child: itemList[0].icon,
                  ),
                  //SizedBox(width: 10,),
                  Text(itemList[0].name),
                ],
              ),
              value: itemList[0],
            ),
            PopupMenuItem<Item>(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right:20.0),
                    child: itemList[1].icon,
                  ),
                  //SizedBox(width: 10,),
                  Text(itemList[1].name),
                ],
              ),
              value: itemList[1],
            ),
            PopupMenuItem<Item>(
              child: Text(itemList[2].name),
              value: itemList[2],
            )
          ];
//                return [
//                  PopupMenuItem(
//                    value: itemList[0],
//                      child: itemList[0].icon)
//                ];
        });
  }
}
