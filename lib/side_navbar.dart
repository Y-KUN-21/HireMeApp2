import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:hire_me/about.dart';
import 'package:hire_me/browse/browse.dart';
import 'package:hire_me/constrants.dart';
import 'package:hire_me/myHome.dart';
import 'package:hire_me/profile/profile.dart';
import 'package:hire_me/settings.dart';

class SideNavbar extends StatefulWidget {
  @override
  _SideNavbarState createState() => _SideNavbarState();
}

class _SideNavbarState extends State<SideNavbar>
    with SingleTickerProviderStateMixin {
  AnimationController _animationController;

  int _currentindex = 0;

  static const Duration toggleDuration = Duration(milliseconds: 250);
  static const double maxSlide = 225;
  static const double minDragStartEdge = 60;
  static const double maxDragStartEdge = maxSlide - 16;
  bool _canBeDragged = false;
  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: toggleDuration);
  }

  void close() => _animationController.reverse();

  void open() => _animationController.forward();

  void toggleDrawer() => _animationController.isCompleted ? close() : open();

  void _onDragEnd(DragEndDetails details) {
    if (_animationController.isDismissed || _animationController.isCompleted) {
      return;
    }
    if (details.velocity.pixelsPerSecond.dx.abs() >= 365.0) {
      double visualVelocity = details.velocity.pixelsPerSecond.dx /
          MediaQuery.of(context).size.width;

      _animationController.fling(velocity: visualVelocity);
    } else if (_animationController.value < 0.5) {
      close();
    } else {
      open();
    }
  }

  void _onDragStart(DragStartDetails details) {
    bool isDragOpenFromLeft = _animationController.isDismissed &&
        details.globalPosition.dx < minDragStartEdge;
    bool isDragCloseFromRight = _animationController.isCompleted &&
        details.globalPosition.dx > maxDragStartEdge;

    _canBeDragged = isDragOpenFromLeft || isDragCloseFromRight;
  }

  void _onDragUpdate(DragUpdateDetails details) {
    if (_canBeDragged) {
      double delta = details.primaryDelta / maxSlide;
      _animationController.value += delta;
    }
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> _screens = [
      MyHome(),
      Browse(),
      Profile(),
      Settings(),
      AboutPage(),
    ];

    return GestureDetector(
      onHorizontalDragStart: _onDragStart,
      onHorizontalDragUpdate: _onDragUpdate,
      onHorizontalDragEnd: _onDragEnd,
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
                    child: _screens[_currentindex]),
              ],
            );
          }),
    );
  }

  Widget _myDrawer() {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        decoration: BoxDecoration(
            color: bgColor,
            gradient: LinearGradient(
              colors: [
                Colors.blueAccent,
                Color.fromRGBO(100, 128, 252, 1),
              ],
              begin: Alignment.centerRight,
              end: Alignment.centerLeft,
            )),
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
                _drawerItems(EvaIcons.homeOutline, "Home", 0),
                _drawerItems(EvaIcons.browserOutline, "Browse", 1),
                _drawerItems(EvaIcons.personOutline, "Profile", 2),
                _drawerItems(EvaIcons.options2Outline, "Settings", 3),
                _drawerItems(EvaIcons.infoOutline, "About", 4),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _drawerItems(IconData icon, String text, currentindex) {
    return InkWell(
      onTap: () {
        setState(() {
          _currentindex = currentindex;
        });
        close();
      },
      child: Padding(
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
      ),
    );
  }
}
