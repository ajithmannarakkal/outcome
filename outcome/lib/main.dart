import 'package:flutter/material.dart';
import 'package:outcome/settings.dart';

import 'homepage.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,theme: ThemeData(
      primarySwatch: Colors.green
    ),
      home: HomePage(),
      routes: {
      'sett':(ctx){
        return Settings();
      }
      },
    );
  }
}
