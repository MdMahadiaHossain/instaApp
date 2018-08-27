import 'package:flutter/material.dart';

class InstaStorys extends StatelessWidget {

  static final storiesFor = Container(
    width: 50.0,
    height: 50.0,
    decoration: BoxDecoration(

      shape: BoxShape.circle,
      image: DecorationImage(
        fit: BoxFit.fill,
        image: NetworkImage(
            "https://s3images.coroflot.com/user_files/individual_files/avatars/large_avatar_644808__bqeknkwbwlsewnp3n7orktvx.jpg"),
      ),
    ),
  );


  final taopTexts = Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      Text(
        "stories",
        style: TextStyle(fontWeight: FontWeight.w900),
      ),
      Row(
        children: <Widget>[
          Icon(Icons.play_arrow),
          Text("watch all", style: TextStyle(fontWeight: FontWeight.w900)),
        ],
      )
    ],
  );

  final stories = Container(
    //   color: Colors.amber,
    padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
    child: SizedBox(
      height: 60.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemExtent: 70.0, // by this we adjust the circles roundness
        itemCount: 30,
        itemBuilder: (context, index) =>
            Container(
              margin: const EdgeInsets.only(right: 10.0),
              height: 50.0,
              width: 50.0,
              child: Container(
                width: 50.0,
                height: 50.0,
                child: index==0?  Stack(
                  fit: StackFit.expand,
                  children: <Widget>[
                    storiesFor ,
                   Positioned(
                     child:Icon(
                       Icons.add_circle,
                       color: Colors.blueAccent,
                     ),
                     bottom: 2.0,
                     right: 5.0,
                   )
                  ],
                ): storiesFor,
              ),
            ),
      ),
    ),
  );


  @override
  Widget build(BuildContext context) =>
      Container(
        margin: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch, //
          mainAxisAlignment: MainAxisAlignment.end, //
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            taopTexts,
            stories,
          ],
        ),
      );
}
//"https://s3images.coroflot.com/user_files/individual_files/avatars/large_avatar_644808__bqeknkwbwlsewnp3n7orktvx.jpg"
//Container(
//width: 50.0,
//height: 50.0,
//decoration: BoxDecoration(
////                      boxShadow: <BoxShadow>[
////                        BoxShadow(
////                            offset: Offset(0.0, 7.0),
////                            blurRadius: 1.0,
////                            spreadRadius: -1.0,
////                            color: Color(0x33000000)),
////                        BoxShadow(
////                            offset: Offset(0.0, 7.0),
////                            blurRadius: 1.0,
////                            spreadRadius: 0.0,
////                            color: Color(0x24000000)),
////                        BoxShadow(
////                            offset: Offset(0.0, 7.0),
////                            blurRadius: 3.0,
////                            spreadRadius: 0.0,
////                            color: Color(0x1F000000)),
////                      ],
////                      border: Border.all(
////                        color: Colors.white30,
////                        width: 5.0,
////                      ),
//shape: BoxShape.circle,
//image: DecorationImage(
//fit: BoxFit.fill,
//image: NetworkImage(
//"https://s3images.coroflot.com/user_files/individual_files/avatars/large_avatar_644808__bqeknkwbwlsewnp3n7orktvx.jpg")))),
//),
