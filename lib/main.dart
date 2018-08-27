import 'package:flutter/material.dart';
import './ui/insta_Body.dart';
import './ui/insta_Home.dart';
import './ui/instaL_List.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Instagram',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: Colors.black,
          primaryIconTheme: IconThemeData(color: Colors.black),
          primaryTextTheme: TextTheme(title: TextStyle(color: Colors.black, fontFamily: 'Oswald Light')),
        ),
        home: InstaHome(),
      );
}

