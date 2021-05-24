import 'package:flutter/material.dart';

class ProfileAvathars extends StatelessWidget {
  final String profileimage;
  final double avatarHeight;
  final double avatarWidth;

  ProfileAvathars({
    this.profileimage,
    this.avatarHeight,
    this.avatarWidth,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: avatarHeight,
      width: avatarWidth,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image:
            DecorationImage(image: AssetImage(profileimage), fit: BoxFit.cover),
      ),
    );
  }
}
