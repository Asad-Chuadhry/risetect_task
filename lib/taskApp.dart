

import 'package:flutter/material.dart';
import 'package:risetecttask/pages/HomePage.dart';
import 'package:risetecttask/resourses/AppStringValues.dart';
import 'package:risetecttask/themes/Themes.dart';

class TaskApp extends StatelessWidget with MyThemes {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppStrings.appTitle,
      theme: lightTheme,
      home: HomePage(),
    );
  }
}
