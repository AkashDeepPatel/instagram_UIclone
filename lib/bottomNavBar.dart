import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 50,
      child: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: Icon(Icons.home),
              onPressed: () {},
            ),
            IconButton(icon: Icon(Icons.search), onPressed: () {}),
            IconButton(icon: Icon(Icons.video_collection), onPressed: () {}),
            IconButton(icon: Icon(Icons.favorite_border), onPressed: () {}),
            InkWell(
              child: CircleAvatar(
                radius: 13,
                backgroundImage: AssetImage("assets/images/profilemain.jpeg"),
              ),
              onTap: () {},
            )
          ],
        ),
      ),
    );
  }
}
