

import 'package:flutter/material.dart';
import 'package:outcome/entry.dart';
import 'package:outcome/outentry.dart';
import 'package:outcome/profile.dart';
import 'package:outcome/settings.dart';

import 'homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.teal,backgroundColor: Colors.white70),
      home: HomePage(),
      routes: {
        'sett': (ctx) {
          return Settings();
        },
        'profile':(ctx) {
          return ProfileView();
        },
        'entry': (ctx) {
          return EntryIn();
        },
        'outentry': (ctx) {
          return EntryOut();
        },
      },
    );
  }
}
