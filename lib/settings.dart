import 'package:flutter/material.dart';
import 'package:hire_me/commons/reAutoSizeText.dart';
import 'package:hire_me/dropdownbutton.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "settings",
          style: TextStyle(fontWeight: FontWeight.bold, letterSpacing: 2.0),
        ),
        elevation: 0.0,
        centerTitle: true,
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 40, 10, 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ReAutoSizeText(
                text: "App setting",
                fontsize: 15,
                fontWeight: FontWeight.bold,
              ),
              SizedBox(
                height: 25,
              ),
              DropDownButton()
            ],
          ),
        ),
      ),
    );
  }
}
