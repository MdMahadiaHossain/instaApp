import 'package:flutter/material.dart';
import './instaL_List.dart';

class InstaBody extends StatelessWidget{

  @override
  Widget build(BuildContext context) => Column(
    mainAxisAlignment: MainAxisAlignment.start,
    children: <Widget>[
     Flexible(child: InstaList())
    ],
  );
}