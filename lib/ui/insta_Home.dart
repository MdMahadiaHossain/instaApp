import 'package:flutter/material.dart';
import './insta_Body.dart';



class InstaHome extends StatelessWidget {
  final topBar = AppBar(
    backgroundColor: Colors.white,
    centerTitle: true,
    elevation: 0.4,
    leading: Icon(Icons.camera_alt),
    title: SizedBox(
      height: 35.0,
      child: Image.asset("assests/images/Instagram_logo.png"),
    ),
    actions: <Widget>[
      Padding(
        padding: EdgeInsets.only(right: 13.0),
        child: Icon(Icons.send),
      ),
    ],
  );

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: topBar,
        body: InstaBody(),
        bottomNavigationBar: Container(
          color: Colors.white,
          height: 50.0,
          alignment: Alignment.center,
          child: BottomAppBar(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround ,
              children: <Widget>[
                IconButton(
                    icon: Icon(Icons.home, color: Colors.grey,),
                    onPressed: () => debugPrint("home pressed")),
                IconButton(
                    icon: Icon(Icons.search, color: Colors.grey,),
                    onPressed: () => debugPrint("search pressed")),
                IconButton(
                    icon: Icon(Icons.add_box, color: Colors.grey,),
                    onPressed: () => debugPrint("home pressed")),
                IconButton(
                    icon: Icon(Icons.favorite, color: Colors.grey,),
                    onPressed: () => debugPrint("home pressed")),
                IconButton(
                    icon: Icon(Icons.person, color: Colors.grey,),
                    onPressed: () => debugPrint("home pressed")),
              ],
            ),
          ),
        ),
      );
}
