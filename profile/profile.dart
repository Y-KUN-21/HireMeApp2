import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

import 'package:hire_me/profile/profile_row.dart';
import 'package:hire_me/common/reAutoSizeText.dart';
import 'package:hire_me/common/softui.dart';
import 'package:hire_me/constrants.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    var mediasize = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: ListView(
          children: [
            Stack(
              alignment: Alignment.topCenter,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 100, 20, 10),
                  child: Container(
                    height: mediasize / 4,
                    decoration: BoxDecoration(
                      color: backgroundcolor,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey[300],
                            offset: Offset(1, 1),
                            blurRadius: 2),
                        BoxShadow(
                            color: Colors.grey[300],
                            offset: Offset(-1, -1),
                            blurRadius: 2)
                      ],
                    ),
                  ),
                ),
                CircleAvatar(
                  radius: 100,
                  backgroundColor: shadowcolor,
                  backgroundImage: NetworkImage(
                      "https://64.media.tumblr.com/acd12dd409680214efb76ac145598faf/e8e01baccc5a22c3-13/s640x960/8131b53fb1ab0c2fda5eb1375dfa3d8ba22d7405.jpg"),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 230.0),
                  child: Column(
                    children: [
                      ReAutoSizeText(
                        text: "Y-KUN-21".toUpperCase(),
                        fontWeight: FontWeight.bold,
                        letterSpacing: 3.0,
                        fontsize: 30,
                      ),
                      ReAutoSizeText(
                        text: "21-02-00".toLowerCase(),
                        fontWeight: FontWeight.normal,
                        fontsize: 15,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ProfileRow(
                    icon: Icon(EvaIcons.personOutline),
                    text: "saitama kun",
                    onPressed: () {},
                  ),
                  ProfileRow(
                    icon: Icon(EvaIcons.phoneCallOutline),
                    text: "+91 45755#51x2",
                    onPressed: () {},
                  ),
                  ProfileRow(
                    icon: Icon(EvaIcons.emailOutline),
                    text: "ykun21@gmail.com",
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: SoftIcon(
        icon: Icon(EvaIcons.edit2Outline),
        radius: 30,
      ),
    );
  }
}
