import 'package:flutter/material.dart';
import 'package:instagram_clone/constants.dart';

class HeaderContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: kDefaultPadding,
        right: kDefaultPadding,
      ),
      width: double.infinity,
      height: 65,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            child: Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                border: Border.all(
                  width: 2,
                  color: Colors.black,
                ),
                borderRadius: BorderRadius.circular(9),
              ),
              child: Icon(
                Icons.add,
                color: Colors.black,
                size: 27,
              ),
            ),
            onTap: () {},
          ),
          Image(
            image: AssetImage("assets/images/logo.png"),
          ),
          InkWell(
            child: Container(
              child: Icon(
                Icons.message_sharp,
              ),
            ),
          )
        ],
      ),
    );
  }
}
