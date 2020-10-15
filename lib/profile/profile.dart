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
          children: [
            ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    height: mediasize.height / 2.5,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: NetworkImage(
                              "https://cdn.wccftech.com/wp-content/uploads/2019/06/WCCFonepunchman1.jpg",
                            ),
                            fit: BoxFit.cover)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 20, 10, 8),
                  child: Text(
                    "User details".toUpperCase(),
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ),
                ProfileRow(
                  icon: Icon(EvaIcons.personOutline),
                  text: "saitama kun",
                  onPressed: () {},
                ),
                Divider(
                  indent: 10,
                  endIndent: 10,
                ),
                ProfileRow(
                  icon: Icon(EvaIcons.phoneCallOutline),
                  text: "+91 45755#51x2",
                  onPressed: () {},
                ),
                ProfileRow(
                  icon: Icon(EvaIcons.phoneCallOutline),
                  text: "+91 52565#51x2",
                  onPressed: () {},
                ),
                Divider(
                  indent: 10,
                  endIndent: 10,
                ),
                ProfileRow(
                  icon: Icon(EvaIcons.emailOutline),
                  text: "ykun21@gmail.com",
                  onPressed: () {},
                ),
              ],
            ),
            Positioned(
              top: mediasize.height / 2.5 - 22,
              left: mediasize.width - 80,
              child: Container(
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Color.fromRGBO(61, 64, 91, 1)),
                    color: Color.fromRGBO(61, 64, 91, 1)),
                height: 60,
                width: 60,
                child: IconButton(
                    icon: Icon(
                      EvaIcons.edit2Outline,
                      color: Colors.white,
                    ),
                    onPressed: null),
              ),
            ),
          ],
        ));
  }
}
