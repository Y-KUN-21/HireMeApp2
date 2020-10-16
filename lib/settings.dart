import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
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
        child: Center(
          child: Text("Settings"),
        ),
      ),
    );
  }
}
