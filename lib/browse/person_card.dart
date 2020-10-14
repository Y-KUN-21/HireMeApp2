import 'package:flutter/material.dart';
import 'package:hire_me/commons/reAutoSizeText.dart';
import 'package:hire_me/constrants.dart';

class PersonCard extends StatelessWidget {
  final String name;
  final String expertise;
  final String shopName;
  final String address;
  final String imageUrl;
  PersonCard(
      {Key key,
      this.shopName,
      @required this.name,
      this.expertise,
      this.address,
      this.imageUrl})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 60.0),
            child: Container(
              width: double.infinity,
              height: 170,
              decoration: boxDecoration,
              child: Container(
                margin: EdgeInsets.only(left: 80, top: 20, bottom: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ReAutoSizeText(
                      text: name ?? "Unknown",
                      fontWeight: FontWeight.bold,
                      maxlines: 1,
                      fontsize: 25,
                    ),
                    ReAutoSizeText(
                      text: expertise ?? "Unknown",
                      fontWeight: FontWeight.normal,
                      maxlines: 1,
                      fontsize: 15,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ReAutoSizeText(
                      text: shopName ?? "Unknown",
                      fontWeight: FontWeight.w800,
                      maxlines: 2,
                      fontsize: 15,
                    ),
                    ReAutoSizeText(
                      text: address ?? "Unknown",
                      fontWeight: FontWeight.normal,
                      fontsize: 15,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            child: CircleAvatar(
              radius: 60,
              backgroundColor: shadowcolor,
              backgroundImage: NetworkImage(imageUrl ??
                  "https://miro.medium.com/max/5760/1*2bjwCLaA8TfH40OXcyLNvA.png"),
            ),
          )
        ],
      ),
    );
  }
}
