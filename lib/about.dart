import 'package:auto_size_text/auto_size_text.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:hire_me/commons/reAutoSizeText.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutPage extends StatefulWidget {
  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "About",
          style: TextStyle(fontWeight: FontWeight.bold, letterSpacing: 2.0),
        ),
        elevation: 0.0,
        centerTitle: true,
      ),
      body: Container(
        color: Colors.white,
        margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
        child: Center(
          child: Wrap(
            direction: Axis.horizontal,
            alignment: WrapAlignment.center,
            children: [
              AutoSizeText(
                "HireMe!",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.0,
                    color: Colors.redAccent,
                    fontSize: 40),
                maxFontSize: 40,
                minFontSize: 30,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 50.0, vertical: 20),
                child: ReAutoSizeText(
                  text:
                      "HireMe is a flutter app powered by REST API written in Django Rest Framework,"
                      "I've made this app for my college project.\n\nCode is available on github, feel free to fork it.",
                  fontWeight: FontWeight.normal,
                  fontsize: 18,
                  maxlines: 10,
                  color: Colors.black,
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 50.0, vertical: 20),
                child: Wrap(
                  direction: Axis.horizontal,
                  children: [
                    IconButton(
                        icon: Icon(EvaIcons.githubOutline),
                        iconSize: 50,
                        onPressed: () =>
                            launch('https://github.com/Y-KUN-21/HireMeApp2')),
                    IconButton(
                        icon: Icon(EvaIcons.emailOutline),
                        iconSize: 50,
                        onPressed: () => launch('mailto:ky6942069@gmail.com')),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
