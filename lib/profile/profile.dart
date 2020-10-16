import 'package:auto_size_text/auto_size_text.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:hire_me/commons/reAutoSizeText.dart';
import 'package:hire_me/constrants.dart';
import 'package:hire_me/profile/profile_row.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    var mediasize = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          title: Text(
            "Ykun".toUpperCase(),
            style: TextStyle(fontWeight: FontWeight.bold, letterSpacing: 2.0),
          ),
          centerTitle: false,
          actions: [
            Center(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "2:21 PM".toUpperCase(),
                  style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 18,
                      letterSpacing: 2.0),
                ),
              ),
            ),
          ],
        ),
        body: Stack(
          alignment: Alignment.topCenter,
          children: [
            Container(
              margin: EdgeInsets.only(top: mediasize.height / 2.5),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: ListView(
                  addAutomaticKeepAlives: true,
                  children: [
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(10, 40, 10, 40),
                        child: ReAutoSizeText(
                          text: "Saitama kun",
                          fontsize: 30,
                          letterSpacing: 2.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    ReAutoSizeText(
                      text: "Contact Details",
                      fontsize: 15,
                      letterSpacing: 2.0,
                      fontWeight: FontWeight.bold,
                    ),
                    ProfileRow(
                      icon: Icon(EvaIcons.phoneCallOutline),
                      text: "+91 45755#51x2",
                    ),
                    ProfileRow(
                      icon: Icon(EvaIcons.emailOutline),
                      text: "myEmail.com",
                    ),
                    Container(
                      height: 60,
                      decoration: BoxDecoration(
                          color: bgColor,
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                        child: AutoSizeText("Update profile",
                            style:
                                TextStyle(fontSize: 20, color: Colors.white)),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: CircleAvatar(
                radius: mediasize.height / 5.2,
                backgroundColor: Colors.grey[300],
                backgroundImage: NetworkImage(
                    "https://64.media.tumblr.com/acd12dd409680214efb76ac145598faf/e8e01baccc5a22c3-13/s640x960/8131b53fb1ab0c2fda5eb1375dfa3d8ba22d7405.jpg"),
              ),
            ),
          ],
        ));
  }
}
