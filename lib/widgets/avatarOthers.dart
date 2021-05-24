import 'package:flutter/material.dart';

import '../assets.dart';

class AvatarOthers extends StatelessWidget {
  final String profileimage;
  final String profilename;

  AvatarOthers({this.profileimage, this.profilename});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
              border: Border.all(
                width: 2,
                color: Colors.orange[400],
              ),
              borderRadius: BorderRadius.circular(100)),
          child: Container(
            padding: EdgeInsets.only(left: 10, right: 10),
            height: 55,
            width: 55,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                  image: AssetImage(profileimage), fit: BoxFit.cover),
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          left: 15,
          child: Text(
            profilename,
            style: TextStyle(color: Colors.white, fontSize: 12),
          ),
        )
      ],
    );
  }
}
