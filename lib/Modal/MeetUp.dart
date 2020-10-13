

import 'package:flutter/cupertino.dart';

enum Status{GOING,HOSTING,INVITES,NONE}
class MeetUp{
  String title;
  DateTime date;
  List<String> imagesList;
  Status status;
  bool isFavorite;
  MeetUp({@required this.title,@required this.date,@required this.imagesList,@required this.status, @required this.isFavorite});
}