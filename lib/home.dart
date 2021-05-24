import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram/assets.dart';
import 'package:instagram/postSection.dart';
import 'package:instagram/statusSection.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
            icon: Icon(Icons.add_box_outlined),
            onPressed: () {
              print("Add button pressed");
            }),
        backgroundColor: Colors.black,
        title: Text(
          "Instagram",
          style: TextStyle(fontSize: 26, fontFamily: ("instagram")),
        ),
        actions: [
          IconButton(
              icon: Icon(FontAwesomeIcons.commentDots),
              onPressed: () {
                print("message clicked");
              })
        ],
      ),
      body: ListView(
        children: [
          StatusSection(),
          Divider(thickness: 10),
          PostSection(
            timeago: "6 HOURS AGO",
            postavatarname: "pappa_jii",
            postcaption: "a beatuiful sunset view",
            postliked: "Abhi_jith and 65 others",
            postlocation: "kannur, Kerala",
            likeavatar: beach,
            postavatar: mine,
            postimage: prof,
          ),
          Divider(thickness: 10),
          PostSection(
            timeago: "3 HOURS AGO",
            postavatarname: "abhijith_1234",
            postcaption: "goodmornign",
            postliked: "pappji_1234 and 66 others",
            postlocation: "cherukunnu, Kerala",
            likeavatar: mine,
            postavatar: sea,
            postimage: sea,
          ),
        ],
      ),
    );
  }
}
