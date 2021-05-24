import 'package:flutter/material.dart';
import 'package:instagram/widgets/avatar.dart';
import 'package:instagram/widgets/avatarOthers.dart';

import 'assets.dart';

class StatusSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(left: 10),
        height: 90,
        // color: Colors.red,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Avatar(),
            SizedBox(width: 15),
            AvatarOthers(
              profileimage: prof,
              profilename: "Pappaji",
            ),
            SizedBox(width: 15),
            AvatarOthers(
              profileimage: sea,
              profilename: "Abhijth",
            ),
            SizedBox(width: 15),
            AvatarOthers(
              profileimage: prof,
              profilename: "Wander",
            ),
            SizedBox(width: 15),
            AvatarOthers(
              profileimage: beach,
              profilename: "abhi_ji",
            ),
            SizedBox(width: 15),
            AvatarOthers(
              profileimage: sea,
              profilename: "Pappaji",
            ),
          ],
        ));
  }
}
