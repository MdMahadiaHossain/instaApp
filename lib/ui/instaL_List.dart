import 'package:flutter/material.dart';
import './insta_storys.dart';
import './insta_post.dart';

class InstaList extends StatelessWidget {
  @override
  Widget build(BuildContext context) => ListView.builder(
      itemCount: 5,
      // index==0 ? SizedBox() means the first index will be the sizedBox and the rest will be the Stories widged
      itemBuilder: (BuildContext context, int index) => index == 0
          ? SizedBox(
              child: InstaStorys(),
            )
          : InstaPost()
  );
}
