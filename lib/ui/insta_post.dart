import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InstaPost extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      // start means all column  contents will be left sided
      mainAxisAlignment: MainAxisAlignment.start,
      //min maximize the amount of free space along the main axis
      mainAxisSize: MainAxisSize.min,
      // stretch will extend the children along the horizontal
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(
              left: 16.0, top: 16.0, right: 16.0, bottom: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Container(
                    width: 60.0,
                    height: 60.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: NetworkImage(
                            "https://s3images.coroflot.com/user_files/individual_files/avatars/large_avatar_644808__bqeknkwbwlsewnp3n7orktvx.jpg"),
                      ),
                    ),
                  ),
                  Padding(padding: const EdgeInsets.only(right: 16.0)),
                  Text(
                    "Md. Mahadi Hossain",
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ],
              ),
              Icon(Icons.more_vert),
            ],
          ),
        ),
        Container(
          width: double.infinity,
          height: 250.0,
          child: Image.network(
            "https://instagram.fdac18-1.fna.fbcdn.net/vp/081259f9af295301b1cb53cae0a4b4c4/5BF58070/t51.2885-15/sh0.08/e35/s640x640/14288185_803733473101947_1961509792_n.jpg",
            fit: BoxFit.cover,
          ),
        ),
        Container(
          padding: EdgeInsets.all(16.0),
          height: 40.0,
          child: Row(
            // start means all column  contents will be left sided
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //min maximize the amount of free space along the main axis
            mainAxisSize: MainAxisSize.min,
            // stretch will extend the children along the horizontal
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Row(
                //min maximize the amount of free space along the main axis
                mainAxisSize: MainAxisSize.min,
                // stretch will extend the children along the horizontal
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Padding(padding: const EdgeInsets.only(right: 0.0)),
                  Icon(FontAwesomeIcons.heart),
                  Padding(padding: const EdgeInsets.only(right: 16.0)),
                  Icon(FontAwesomeIcons.comment),
                  Padding(padding: const EdgeInsets.only(right: 16.0)),
                  Icon(FontAwesomeIcons.paperPlane),
                ],
              ),
              Icon(FontAwesomeIcons.bookmark)
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text("jack, and 20 others like",
          style: TextStyle(
            fontWeight: FontWeight.w900,
          ),
          ),
        )
        ,
        Padding(
          padding: const EdgeInsets.only(
              left: 16.0, top: 10.0, right: 16.0, bottom: 10.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Container(
                    width: 40.0,
                    height: 40.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: NetworkImage(
                            "https://s3images.coroflot.com/user_files/individual_files/avatars/large_avatar_644808__bqeknkwbwlsewnp3n7orktvx.jpg"),
                      ),
                    ),
                  ),
                  Padding(padding: const EdgeInsets.only(right: 16.0)),
                ],
              ),
              Expanded(
                child: TextField(
                  decoration: InputDecoration(hintText: "Add a comment . . .",
                  border: InputBorder.none,

                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
