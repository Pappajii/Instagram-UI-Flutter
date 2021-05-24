import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram/assets.dart';
import 'package:instagram/widgets/ProfileAvathars.dart';
import 'package:instagram/widgets/avatarOthers.dart';

class PostSection extends StatelessWidget {
  final String timeago;
  final String postavatarname;
  final String postcaption;
  final String postliked;
  final String postlocation;
  final String likeavatar;
  final String postavatar;
  final String postimage;

  PostSection(
      {this.likeavatar,
      this.postavatar,
      this.postavatarname,
      this.postcaption,
      this.postliked,
      this.postlocation,
      this.timeago,
      this.postimage});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          headerSection(),
          postSection(),
          likeSection(),
          commentSection(),
          postCaption(),
          postComments(),
          timeAgo(),
        ],
      ),
    );
  }

  Widget timeAgo() {
    return Container(
      padding: EdgeInsets.only(top: 0, left: 10, right: 10, bottom: 5),
      child: Row(
        children: [
          Text(
            timeago,
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.w300, fontSize: 12),
          ),
        ],
      ),
    );
  }

  Widget postComments() {
    return Container(
      padding: EdgeInsets.only(top: 0, left: 10, right: 10, bottom: 5),
      child: Row(
        children: [
          Text(
            "view all comments",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.w300, fontSize: 12),
          ),
        ],
      ),
    );
  }

  Widget postCaption() {
    return Container(
      padding: EdgeInsets.only(top: 5, left: 10, right: 10, bottom: 5),
      child: Row(
        children: [
          Text(
            postavatarname,
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.w600, fontSize: 15),
          ),
          SizedBox(width: 10),
          Text(
            postcaption,
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.w400, fontSize: 15),
          ),
        ],
      ),
    );
  }

  Widget commentSection() {
    return Container(
      padding: EdgeInsets.only(top: 5, left: 10, right: 10, bottom: 5),
      child: Row(
        children: [
          ProfileAvathars(
            profileimage: likeavatar,
            avatarHeight: 20,
            avatarWidth: 20,
          ),
          SizedBox(width: 15),
          Text(
            "Liked by ",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.w300, fontSize: 13),
          ),
          SizedBox(width: 5),
          Text(
            postliked,
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 13),
          )
        ],
      ),
    );
  }

  Widget headerSection() {
    return ListTile(
      leading: ProfileAvathars(
        avatarHeight: 35,
        avatarWidth: 35,
        profileimage: postavatar,
      ),
      title: Text(
        postavatarname,
        style: TextStyle(
          color: Colors.white,
          fontFamily: "InstaPost",
          fontSize: 15,
        ),
      ),
      subtitle: Text(
        postlocation,
        style: TextStyle(color: Colors.white, fontSize: 12),
      ),
      trailing: Icon(
        Icons.more_vert,
        color: Colors.white,
      ),
    );
  }

  Widget postSection() {
    return Container(
      child: Image.asset(postimage),
    );
  }

  Widget likeSection() {
    return Container(
      padding: EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(
                Icons.favorite,
                color: Colors.white,
                size: 20,
              ),
              SizedBox(
                width: 15,
              ),
              Icon(
                FontAwesomeIcons.comment,
                color: Colors.white,
                size: 20,
              ),
              SizedBox(
                width: 15,
              ),
              Icon(
                FontAwesomeIcons.paperPlane,
                color: Colors.white,
                size: 20,
              ),
            ],
          ),
          Icon(
            Icons.bookmark_border_outlined,
            color: Colors.white,
          )
        ],
      ),
    );
  }
}
