import 'package:flutter/material.dart';

import '../assets.dart';

class Avatar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              image:
                  DecorationImage(image: AssetImage(mine), fit: BoxFit.cover),
              border: Border.all(
                width: .1,
                color: Colors.white,
              )),
        ),
        Positioned(
          bottom: 15,
          right: 0,
          child: Container(
            height: 18,
            width: 18,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.blue,
            ),
            child: Icon(
              Icons.add,
              color: Colors.white,
              size: 17,
            ),
          ),
        ),
        Positioned(
          bottom: -1,
          right: 0,
          child: Text(
            "Your Story",
            style: TextStyle(color: Colors.white, fontSize: 12),
          ),
        )
      ],
    );
  }
}
