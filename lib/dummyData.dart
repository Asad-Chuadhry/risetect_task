

import 'Modal/MeetUp.dart';

List<MeetUp> meetUpList=[
  MeetUp(
      title: "Walk in the park",
      date: DateTime.now(),
      imagesList: [
        "assets/img/1.jpg",
        "assets/img/4.jpg",
        "assets/img/3.jpg",
      ],
      status: Status.GOING,
      isFavorite: false
  ),
  MeetUp(
      title: "Drinks in the pub! 😍",
      date: DateTime.now().subtract(Duration(days: 8)),
      imagesList: [
        "assets/img/3.jpg",
        "assets/img/4.jpg",
        "assets/img/1.jpg",
      ],
      isFavorite: false,
      status: Status.GOING),
  MeetUp(
      title: "Rounders in the park!",
      date: DateTime.now().subtract(Duration(days: 34)),
      imagesList: [
        "assets/img/1.jpg",
        "assets/img/4.jpg",
        "assets/img/3.jpg",
      ],
      isFavorite: false,
      status: Status.HOSTING),
  MeetUp(
      title: "Bird watching London WetLands Centre",
      date: DateTime.now(),
      imagesList: [
        "assets/img/3.jpg",
      ],
      isFavorite: true,
      status: Status.INVITES),
  MeetUp(
      title: "Go see Harry Potter at King's cross",
      date: DateTime.now(),
      imagesList: [
        "assets/img/1.jpg",
      ],
      isFavorite: true,
      status: Status.INVITES),
  MeetUp(
      title: "Blackout Predrinks at the Nag's Head",
      date: DateTime.now(),
      imagesList: [
        "assets/img/1.jpg",
        "assets/img/3.jpg",
      ],
      isFavorite: true,
      status: Status.INVITES),
  MeetUp(
      title: "Rowing in Kingston",
      date: DateTime.now(),
      imagesList: [
        "assets/img/4.jpg",
      ],
      isFavorite: false,
      status: Status.INVITES),
  MeetUp(
      title: "Jog in Hyde Park",
      date: DateTime.now(),
      imagesList: [
        "assets/img/3.jpg",
        "assets/img/1.jpg",
      ],
      isFavorite: false,
      status: Status.INVITES),
  MeetUp(
      title: "Rowing in Kingston",
      date: DateTime.now(),
      imagesList: [
        "assets/img/1.jpg",
      ],
      isFavorite: false,
      status: Status.INVITES),
  MeetUp(
      title: "Blackout Club-Cheap drinks",
      date: DateTime.now(),
      imagesList: [
        "assets/img/3.jpg",
      ],
      isFavorite: true,
      status: Status.NONE),
  MeetUp(
      title: "Blackout Club-Cheap drinks",
      date: DateTime.now(),
      imagesList: [
        "assets/img/1.jpg",
      ],
      isFavorite: true,
      status: Status.NONE),
];