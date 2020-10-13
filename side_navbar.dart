import 'dart:ui';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hire_me/myHome.dart';

class SideNavbar extends StatefulWidget {
  @override
  _SideNavbarState createState() => _SideNavbarState();
}

class _SideNavbarState extends State<SideNavbar>
    with SingleTickerProviderStateMixin {
  AnimationController _animationController;
  final double maxSlide = 250.0;
  Color bgColor = Color.fromRGBO(68, 138, 255, 1);

  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 250));
  }

  void toggle() => _animationController.isDismissed
      ? _animationController.forward()
      : _animationController.reverse();

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: bgColor, systemNavigationBarColor: bgColor));
    return GestureDetector(
      child: AnimatedBuilder(
          animation: _animationController,
          builder: (context, _) {
            double slide = maxSlide * _animationController.value;
            double scale = 1 - (_animationController.value * 0.3);
            return Stack(
              children: [
                _myDrawer(),
                Transform(
                    transform: Matrix4.identity()
                      ..translate(slide)
                      ..scale(scale),
                    alignment: Alignment.centerLeft,
                    child: _myhome()),
              ],
            );
          }),
    );
  }

  Widget _myhome() {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: bgColor,
          elevation: 0.0,
          title: Text("HOME"),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(EvaIcons.menu2Outline),
            onPressed: () => toggle(),
          ),
        ),
        body: MyHome());
  }

  Widget _myDrawer() {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        color: bgColor,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  textAlign: TextAlign.left,
                  text: TextSpan(
                    text: 'HireMe!\n',
                    style: TextStyle(
                        fontSize: 50,
                        fontFamily: "Raleway",
                        fontWeight: FontWeight.w500),
                    children: <TextSpan>[
                      TextSpan(
                          text: 'one for all.',
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              letterSpacing: 5.0,
                              fontSize: 20,
                              fontFamily: "Raleway")),
                    ],
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                _drawerItems(
                  EvaIcons.home,
                  "Home",
                ),
                InkWell(
                    onTap: () =>
                        Navigator.pushReplacementNamed(context, '/profile'),
                    child: _drawerItems(EvaIcons.browser, "Browse")),
                _drawerItems(EvaIcons.person, "Profile"),
                _drawerItems(EvaIcons.settings2Outline, "Settings"),
                _drawerItems(EvaIcons.info, "About"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget _drawerItems(IconData icon, String text) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 15.0),
    child: Row(
      children: [
        Icon(
          icon,
          color: Colors.white,
        ),
        SizedBox(width: 20),
        Text(
          text,
          style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontFamily: "Raleway",
              fontWeight: FontWeight.w600),
        ),
      ],
    ),
  );
}
