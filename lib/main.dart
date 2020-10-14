import 'package:flutter/material.dart';
import 'package:hire_me/bottomNavBar.dart';
import 'package:hire_me/credentials/sign_up.dart';
import 'package:hire_me/credentials/sing_in.dart';
import 'package:hire_me/home/home.dart';
import 'package:hire_me/profile/profile.dart';
import 'package:hire_me/side_navbar.dart';

void main() {
  runApp(MyApp());
}

Map<int, Color> color = {
  50: Color.fromRGBO(250, 250, 250, .1),
  100: Color.fromRGBO(250, 250, 250, .2),
  200: Color.fromRGBO(250, 250, 250, .3),
  300: Color.fromRGBO(250, 250, 250, .4),
  400: Color.fromRGBO(250, 250, 250, .5),
  500: Color.fromRGBO(250, 250, 250, .6),
  600: Color.fromRGBO(250, 250, 250, .7),
  700: Color.fromRGBO(250, 250, 250, .8),
  800: Color.fromRGBO(250, 250, 250, .9),
  900: Color.fromRGBO(250, 250, 250, 1),
};
MaterialColor colorCustom = MaterialColor(0xFFfafafa, color);

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        initialRoute: '/sidenavbar',
        routes: {
          '/signin': (context) => SignIn(),
          '/signup': (context) => SignUp(),
          '/bottomnavbar': (context) => BottomNavBar(),
          '/home': (context) => Home(),
          '/profile': (context) => Profile(),
          '/sidenavbar': (context) => SideNavbar(),
        },
        title: 'HireMe!',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            fontFamily: "Raleway",
            primarySwatch: colorCustom,
            bottomAppBarColor: colorCustom,
            brightness: Brightness.light));
  }
}
