import 'dart:math';

import 'package:flutter/material.dart';
import 'constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Feeds extends StatefulWidget {
  @override
  _FeedsState createState() => _FeedsState();
}

class _FeedsState extends State<Feeds> {
  bool isLiked = false;
  bool isSaved = false;

  @override
  Widget build(BuildContext context) {
    Random random = new Random();
    int likes = random.nextInt(1000);
    int comments = random.nextInt(700);
    int uploadTime = random.nextInt(12);
    return Container(
        child: Column(
      children: [
        buildFeedTile("assets/images/profile1.jpeg", "angeline_yu",
            "assets/images/feed1.jpeg", likes, comments, uploadTime),
        SizedBox(
          height: 20,
        ),
        buildFeedTile("assets/images/profile3.jpeg", "athenaV",
            "assets/images/feed2.jpeg", likes, comments, uploadTime),
        SizedBox(
          height: 20,
        ),
        buildFeedTile("assets/images/profile2.jpeg", "seo_gun",
            "assets/images/feed3.jpeg", likes, comments, uploadTime),
        SizedBox(
          height: 20,
        ),
        buildFeedTile("assets/images/profile4.jpeg", "murtagh_kalani",
            "assets/images/feed6.jpeg", likes, comments, uploadTime),
      ],
    ));
  }

  Column buildFeedTile(String userImgSrc, String userName, String feedImgSrc,
      int likes, int comments, int uploadTime) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.symmetric(
                  horizontal: kDefaultPadding, vertical: 5),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 15,
                    backgroundImage: AssetImage(userImgSrc),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(userName),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: kDefaultPadding),
              child: Icon(Icons.more_vert),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          height: 300,
          child: Image(
            image: AssetImage(feedImgSrc),
            fit: BoxFit.fill,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Row(
                children: [
                  IconButton(
                    icon:
                        Icon(isLiked ? Icons.favorite : FontAwesomeIcons.heart),
                    color: isLiked ? Colors.red : Colors.black,
                    onPressed: () {
                      setState(() {
                        isLiked = !isLiked;
                      });
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.mode_comment_outlined),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(FontAwesomeIcons.paperPlane),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 10),
              child: IconButton(
                icon: Icon(isSaved
                    ? FontAwesomeIcons.solidBookmark
                    : FontAwesomeIcons.bookmark),
                onPressed: () {
                  setState(() {
                    isSaved = !isSaved;
                  });
                },
              ),
            ),
          ],
        ),
        Container(
          padding: EdgeInsets.only(left: kDefaultPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 10,
                    backgroundImage: AssetImage("assets/images/profile2.jpeg"),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text("Liked by angeline_yu and $likes"
                      " others"),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Text(
                    "angeline_p ",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text("Waiting for comments!"),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Text("View all $comments comments"),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  CircleAvatar(
                    radius: 10,
                    backgroundImage:
                        AssetImage("assets/images/profilemain.jpeg"),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text("Add a comment..."),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Text("$uploadTime hours ago"),
            ],
          ),
        ),
      ],
    );
  }
}
