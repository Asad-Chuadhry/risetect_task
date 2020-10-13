import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'taskApp.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized(); //Ensure MyApp Widget is initialized before locking App in orientation mode
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]) // lock orientation in portrait mode
      .then((_) {
    runApp(new TaskApp()); //Run app
  });
}