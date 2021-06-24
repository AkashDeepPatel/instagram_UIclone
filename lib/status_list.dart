import 'package:flutter/material.dart';
import 'package:instagram_clone/constants.dart';

class StatusList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.only(left: kDefaultPadding),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Stack(children: [
                buildStatusIcon("assets/images/profilemain.jpeg", "Your Story"),
                Positioned(
                  top: 40,
                  left: 50,
                  child: Container(
                    width: 27,
                    height: 27,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(color: Colors.white, width: 2)),
                    child: Icon(Icons.add),
                  ),
                ),
              ]),
            ),
            SizedBox(
              width: 15,
            ),
            buildStatusIcon("assets/images/profile4.jpeg", "murtagh_kalani"),
            SizedBox(
              width: 15,
            ),
            buildStatusIcon("assets/images/profile2.jpeg", "seo_gun"),
            SizedBox(
              width: 15,
            ),
            buildStatusIcon("assets/images/profile3.jpeg", "athenaV"),
            SizedBox(
              width: 15,
            ),
            buildStatusIcon("assets/images/profile1.jpeg", "angeline_yu"),
            SizedBox(
              width: 15,
            ),
            buildStatusIcon("assets/images/profile2.jpeg", "nalara_21"),
          ],
        ),
      ),
    );
  }

  Column buildStatusIcon(String imgSrc, String title) {
    return Column(
      children: [
        InkWell(
          child: CircleAvatar(
            radius: 38,
            // backgroundColor: Colors.blue,
            backgroundImage: AssetImage("assets/images/statusRing.jpg"),
            child: CircleAvatar(
              radius: 35,
              backgroundImage: AssetImage(imgSrc),
            ),
          ),
          onTap: () {},
        ),
        Text(title),
      ],
    );
  }
}
